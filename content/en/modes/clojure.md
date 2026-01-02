---
title: Clojure
---

Lem's `clojure-mode` provides **syntax highlighting**, **LSP** support and **nREPL** integration, CIDER-compatible keybindings:

- full-featured Clojure language mode with syntax highlighting, indentation, and LSP integration
- nREPL client for interactive development with eval, macroexpand, and documentation commands
- REPL mode with history, namespace tracking, and connection management
- Clojure-specific **tools**: inspector, test runner, stacktrace navigation, and detective integration

With a comprehensive test suite covering the bencode protocol, indentation, and mode functionality.

## Features

### Core Mode (`clojure-mode.lisp`)

- syntax highlighting for Clojure/ClojureScript/EDN files
- Clojure-specific indentation with customizable rules
- rainbow parentheses support
- namespace detection and tracking, display namespace in modeline
- file type support: `.clj`, `.cljs`, `.cljc`, `.cljx`, `.edn`

### nREPL Integration (`nrepl-client.lisp`, `repl.lisp`)

- full nREPL protocol implementation using bencode
- interactive REPL with command history
- connection management (`nrepl-connect`, `nrepl-disconnect`)
- session handling (`nrepl-clone-session`, `nrepl-close-session`)
- async/sync message sending
- eval commands: `clojure-eval-last-sexp`, `clojure-eval-defun`, `clojure-eval-region`, `clojure-eval-buffer`
- macroexpand support: `clojure-macroexpand-1`, `clojure-macroexpand-all`
- documentation lookup: `clojure-describe-symbol`

### Development Tools

- **Inspector** (`inspector.lisp`): Browse Clojure data structures interactively
- **Test Runner** (`test-runner.lisp`): Run tests with results display and navigation
- **Stacktrace** (`stacktrace.lisp`): Navigate exceptions with source jumping
- **Detective** (`detective.lisp`): Context menu integration for Clojure-specific actions
- **Tools** (`tools.lisp`): Code actions, refactoring, and utilities

### LSP Support (`lsp-config.lisp`)

- integration with clojure-lsp for advanced IDE features
- root patterns: `deps.edn`, `project.clj`, `build.boot`, `shadow-cljs.edn`

## Commands


### Evaluation Commands

- `clojure-eval-defun` - Evaluate top-level form
- `clojure-eval-last-sexp` - Evaluate expression before point
- `clojure-eval-region` - Evaluate selected region
- `clojure-eval-buffer` - Evaluate entire buffer
- `clojure-load-file` - Load current file
- `clojure-switch-to-repl` - Switch to REPL buffer
- `clojure-set-namespace` - Change namespace
- `toggle-clojure-paren-coloring`- Toggle rainbow parentheses

###  Keybindings (CIDER-compatible)

```
C-c C-c    clojure-eval-defun
C-x C-e    clojure-eval-last-sexp
C-c C-e    clojure-eval-last-sexp
C-c C-r    clojure-eval-region
C-c C-k    clojure-load-file
C-c C-l    clojure-load-file
C-c C-z    clojure-switch-to-repl
C-c M-n    clojure-set-namespace-from-buffer
```

### Macro Expansion 

- `clojure-macroexpand-1` (C-c Return) - Single-step expansion
- `clojure-macroexpand-all` (C-c M-m) - Full expansion
- Popup buffer with syntax highlighting

###  Documentation 

- `clojure-describe-symbol` - Show docstring
- `clojure-describe-symbol-at-point` (C-c C-d d) - Doc at point
- Popup buffer for documentation display

###  Inspector 

- `clojure-inspector-mode` with navigation
- `clojure-inspect` - Inspect arbitrary expression
- `clojure-inspect-last-sexp` (C-c I) - Inspect sexp
- History navigation (l/Backspace to go back)
- Refresh capability (g)

###  Test Runner 

- `clojure-run-test-at-point` (C-c C-t t) - Run test under cursor
- `clojure-run-tests` (C-c C-t n) - Run tests in namespace
- `clojure-run-all-tests` (C-c C-t a) - Run all tests
- `clojure-rerun-last-test` (C-c C-t l) - Rerun last test
- Color-coded pass/fail/error display
- Navigation between failures (n/p)

###  Stacktrace Navigation 

- `clojure-stacktrace-mode` with keybindings
- `clojure-show-last-exception` (C-c C-x)
- Clickable stack frames to jump to source
- Toggle Java frames visibility (j)
- Frame navigation (n/p/Tab)

###  Detective Integration (Lem's interactive menu)

- Regex patterns for all definition types:
  - Functions: `defn`, `defn-`, `defmulti`, `defmethod`
  - Macros: `defmacro`
  - Types: `defprotocol`, `defrecord`, `deftype`, `definterface`
  - Variables: `def`, `defonce`
  - Namespaces: `ns`
  - Tests: `deftest`, `defspec`
- Auto-setup via mode hook

###  Context Menu 

- Context menu with evaluation actions
- Items: Evaluate Expression, Evaluate Defun, Inspect Value, Run Test, Show Documentation
- Auto-setup via mode hook

###  ClojureScript Support  (Partial)

- File type registration for `.cljs`, `.cljc`, `.cljx`, `.edn`
- [ ] Shadow-cljs integration (future enhancement)
- [ ] Figwheel support (future enhancement)

###  Refactoring Tools 

- `clojure-align-let` (C-c C-a l) - Align let bindings
- `clojure-align-map` (C-c C-a m) - Align map literals
- `clojure-cycle-privacy` (C-c C-p) - Toggle defn/defn-
- `clojure-add-require` (C-c C-a r) - Add require clause
- `clojure-toggle-keyword-string` (C-c C-') - Toggle :keyword/"string"
- `clojure-thread-first` - Convert to -> form


### LSP Integration 

- clojure-lsp configuration
- Project detection via `deps.edn`, `project.clj`, `build.boot`, `shadow-cljs.edn`
- Installation instructions

### Syntax Highlighting 

- TextMate-style language definition
- Special forms (40+)
- Built-in functions (100+)
- Keywords, strings, regex literals
- Numeric literals (decimal, hex, ratios)
- Character literals
- Metadata and deref

### Navigation

- `clojure-beginning-of-defun` / `clojure-end-of-defun`
- `clojure-indent-sexp` (C-M-q)

The original [PR](https://github.com/lem-project/lem/pull/2068) comes with a full test suite.

It was done with the help of Claude Code.
