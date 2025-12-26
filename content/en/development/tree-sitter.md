---
title: Tree-sitter Integration
weight: -3
---

Lem integrates [tree-sitter](https://tree-sitter.github.io/tree-sitter/) for advanced syntax highlighting and indentation. Tree-sitter provides incremental parsing that can efficiently update syntax trees as you edit, enabling features that understand code structure rather than just patterns.

## Overview

The tree-sitter integration in Lem provides:

- **Syntax Highlighting**: Accurate, language-aware highlighting based on AST nodes
- **Indentation**: Structure-based indentation using tree-sitter queries
- **Incremental Parsing**: Efficient updates without re-parsing entire files
- **Graceful Fallback**: Falls back to regex-based highlighting when tree-sitter is unavailable

## Architecture

```
                              ┌─────────────────┐
                              │  tree-sitter-cl │
                              │  (FFI bindings) │
                              └────────┬────────┘
                                       │
┌─────────────────┐           ┌────────▼────────┐
│   Language Mode │──────────▶│ lem-tree-sitter │
│  (json, nix...) │           │   (extension)   │
└─────────────────┘           └────────┬────────┘
                                       │
                              ┌────────▼────────┐
                              │   Lem Buffer    │
                              │   (syntax-parser)│
                              └─────────────────┘
```

The integration consists of:

| Component | Location | Purpose |
|-----------|----------|---------|
| `tree-sitter-cl` | External | FFI bindings to native tree-sitter |
| `lem-tree-sitter` | `extensions/tree-sitter/` | Core integration module |
| Query files | `extensions/<mode>/tree-sitter/` | Per-language highlight/indent rules |

## Supported Languages

The following modes have tree-sitter support:

| Language | Syntax Highlighting | Indentation |
|----------|:------------------:|:-----------:|
| JSON | ✓ | - |
| YAML | ✓ | - |
| Nix | ✓ | ✓ |
| Markdown | ✓ | - |
| WAT (WebAssembly Text) | ✓ | - |

## Adding Tree-sitter Support to a Mode

### Step 1: Create Query Files

Create a `tree-sitter/` directory in your mode's extension folder:

```
extensions/your-mode/
├── your-mode.lisp
├── your-mode.asd
└── tree-sitter/
    ├── highlights.scm    # Syntax highlighting rules
    └── indents.scm       # Indentation rules (optional)
```

### Step 2: Write Highlight Queries

Highlight queries use tree-sitter's S-expression query syntax. Each query captures AST nodes and assigns them to highlight groups.

Example `highlights.scm` for a simple language:

```scheme
;; Comments
(comment) @comment

;; Keywords
[
  "if"
  "else"
  "let"
  "in"
  "function"
] @keyword

;; Literals
(string) @string
(number) @number
(boolean) @constant.builtin

;; Functions
(function_definition
  name: (identifier) @function)

(function_call
  function: (identifier) @function.call)

;; Variables
(variable_declaration
  name: (identifier) @variable)

;; Operators
["+" "-" "*" "/" "==" "!="] @operator

;; Punctuation
["(" ")" "{" "}" "[" "]"] @punctuation.bracket
["," ";" ":"] @punctuation.delimiter
```

### Step 3: Enable Tree-sitter in Mode Definition

In your mode's Lisp file:

```lisp
(defpackage :lem-your-mode
  (:use :cl :lem :lem/language-mode))
(in-package :lem-your-mode)

(defvar *your-syntax-table*
  (let ((table (make-syntax-table ...)))
    ;; Set up base syntax table
    table))

(defun tree-sitter-query-path ()
  "Return the path to the tree-sitter highlight query."
  (asdf:system-relative-pathname :lem-your-mode "tree-sitter/highlights.scm"))

(defun tree-sitter-indent-query-path ()
  "Return the path to the tree-sitter indent query."
  (asdf:system-relative-pathname :lem-your-mode "tree-sitter/indents.scm"))

(define-major-mode your-mode language-mode
    (:name "Your Mode"
     :syntax-table *your-syntax-table*
     :mode-hook *your-mode-hook*)
  ;; Enable tree-sitter (with optional indent query)
  (lem-tree-sitter:enable-tree-sitter-for-mode
   *your-syntax-table*
   "your-language"  ; tree-sitter language name
   (tree-sitter-query-path)
   :indent-query-path (tree-sitter-indent-query-path))
  (setf (variable-value 'enable-syntax-highlight) t))
```

### Step 4: Handle Fallback (Optional)

For robust error handling when tree-sitter isn't available:

```lisp
(defun try-enable-tree-sitter ()
  "Try to enable tree-sitter, returning T on success, NIL on failure."
  (ignore-errors
    (when (and (find-package :lem-tree-sitter)
               (funcall (find-symbol "TREE-SITTER-AVAILABLE-P" :lem-tree-sitter)))
      (funcall (find-symbol "ENABLE-TREE-SITTER-FOR-MODE" :lem-tree-sitter)
               *your-syntax-table* "your-language" (tree-sitter-query-path))
      t)))

(define-major-mode your-mode language-mode
    (:syntax-table *your-syntax-table*)
  (unless (try-enable-tree-sitter)
    ;; Fall back to tmlanguage-based highlighting
    (set-syntax-parser *your-syntax-table* (make-tmlanguage-your-lang)))
  (setf (variable-value 'enable-syntax-highlight) t))
```

## Capture Names Reference

Lem maps tree-sitter capture names to syntax attributes. The following captures are supported:

### Code Elements

| Capture | Lem Attribute | Usage |
|---------|--------------|-------|
| `@keyword` | `syntax-keyword-attribute` | Language keywords |
| `@keyword.control` | `syntax-keyword-attribute` | Control flow keywords |
| `@keyword.function` | `syntax-keyword-attribute` | Function-related keywords |
| `@string` | `syntax-string-attribute` | String literals |
| `@string.escape` | `syntax-constant-attribute` | Escape sequences |
| `@number` | `syntax-constant-attribute` | Numeric literals |
| `@comment` | `syntax-comment-attribute` | Comments |
| `@function` | `syntax-function-name-attribute` | Function names |
| `@function.call` | `syntax-function-name-attribute` | Function calls |
| `@function.builtin` | `syntax-builtin-attribute` | Built-in functions |
| `@type` | `syntax-type-attribute` | Type names |
| `@variable` | `syntax-variable-attribute` | Variable names |
| `@variable.builtin` | `syntax-builtin-attribute` | Built-in variables |
| `@constant` | `syntax-constant-attribute` | Constants |
| `@constant.builtin` | `syntax-constant-attribute` | Built-in constants |
| `@operator` | `syntax-builtin-attribute` | Operators |
| `@property` | `syntax-variable-attribute` | Object properties |

### Markdown/Document Elements

| Capture | Lem Attribute | Usage |
|---------|--------------|-------|
| `@markup.heading.1` - `@markup.heading.6` | `document-header1-attribute` - `document-header6-attribute` | Headers |
| `@markup.bold` | `document-bold-attribute` | Bold text |
| `@markup.italic` | `document-italic-attribute` | Italic text |
| `@markup.raw` | `document-code-block-attribute` | Code blocks |
| `@markup.link` | `document-link-attribute` | Links |
| `@markup.quote` | `document-blockquote-attribute` | Block quotes |

### Hierarchical Fallback

Capture names support hierarchical fallback. For example, `@keyword.control` will fall back to `@keyword` if no specific mapping exists.

## Writing Indent Queries

Indent queries follow the Helix editor's format using `@indent` and `@outdent` captures.

### Basic Syntax

```scheme
;; Nodes that increase indentation
[
  (block)
  (object)
  (array)
] @indent

;; Tokens that decrease indentation
[
  "}"
  "]"
  ")"
] @outdent
```

### Scope Rules

The indentation system uses scope rules:

- **`@indent`** (scope: tail): Only applies if the node starts on a previous line
- **`@outdent`** (scope: all): Applies when the token appears at the start of a line

### Example: Nix Indentation

```scheme
;; Indent-contributing nodes
[
  (attrset_expression)
  (rec_attrset_expression)
  (let_expression)
  (list_expression)
  (function_expression)
  (if_expression)
] @indent

;; Closing tokens
[
  "}"
  "]"
  ")"
] @outdent

;; Special: "in" aligns with "let"
(let_expression "in" @outdent)

;; Special: "then" and "else" align with "if"
(if_expression "then" @outdent)
(if_expression "else" @outdent)
```

## API Reference

### Main Functions

#### `enable-tree-sitter-for-mode`

```lisp
(enable-tree-sitter-for-mode syntax-table language query-path &key indent-query-path)
```

Enable tree-sitter for a mode's syntax table.

| Parameter | Description |
|-----------|-------------|
| `syntax-table` | The mode's syntax table |
| `language` | Tree-sitter language name (e.g., `"json"`) |
| `query-path` | Path to `highlights.scm` |
| `indent-query-path` | Optional path to `indents.scm` |

Returns `T` on success, `NIL` on failure.

#### `tree-sitter-available-p`

```lisp
(tree-sitter-available-p) => boolean
```

Check if tree-sitter is available on the system.

#### `get-buffer-treesitter-parser`

```lisp
(get-buffer-treesitter-parser buffer) => treesitter-parser or NIL
```

Get the tree-sitter parser for a buffer, if any.

### The `treesitter-parser` Class

The core class for tree-sitter integration:

| Slot | Accessor | Description |
|------|----------|-------------|
| `language-name` | `treesitter-parser-language-name` | Language name (e.g., "json") |
| `tree` | `treesitter-parser-tree` | Current syntax tree |
| `highlight-query` | `treesitter-parser-highlight-query` | Compiled highlight query |
| `indent-query` | `treesitter-parser-indent-query` | Compiled indent query |

## Incremental Parsing

Lem automatically handles incremental parsing. When you edit a buffer:

1. Edit events are recorded via `after-change-functions` hook
2. Pending edits are applied to the existing tree
3. Tree-sitter reuses unchanged AST nodes
4. Only modified portions are re-parsed

This provides efficient performance even for large files.

## Installing Tree-sitter Grammars

Tree-sitter grammars must be installed on your system. The typical approach:

### Using tree-sitter CLI

```bash
# Install tree-sitter CLI
npm install -g tree-sitter-cli

# Clone and build a grammar
git clone https://github.com/tree-sitter/tree-sitter-json
cd tree-sitter-json
tree-sitter generate
```

### Using System Package Manager

Many distributions provide pre-built grammars:

```bash
# Arch Linux
pacman -S tree-sitter-grammars

# macOS (Homebrew)
brew install tree-sitter

# Nix
nix-env -iA nixpkgs.tree-sitter-grammars.tree-sitter-json
```

## Troubleshooting

### Tree-sitter not working

1. Check if tree-sitter is available:
   ```lisp
   (lem-tree-sitter:tree-sitter-available-p)
   ```

2. Check if the language grammar is installed:
   ```lisp
   (tree-sitter:get-language "json")
   ```

3. Verify query file exists:
   ```lisp
   (probe-file (tree-sitter-query-path))
   ```

### Incorrect highlighting

1. Test your query with tree-sitter CLI:
   ```bash
   tree-sitter query highlights.scm example.json
   ```

2. Check for syntax errors in query file

3. Verify capture names match supported names (see Capture Names Reference)

### Performance issues

- Tree-sitter uses incremental parsing, but very large files may still be slow
- Consider limiting highlight range for extremely large files
- Check if grammar has known performance issues

## Resources

- [Tree-sitter Documentation](https://tree-sitter.github.io/tree-sitter/)
- [Writing Queries](https://tree-sitter.github.io/tree-sitter/using-parsers#pattern-matching-with-queries)
- [tree-sitter-cl](https://github.com/lem-project/tree-sitter-cl) - Common Lisp bindings
- [Helix Indent Queries](https://docs.helix-editor.com/guides/indent.html) - Indent query reference
