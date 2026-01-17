---
title: TypeScript
---

## Configuration

TypeScript is supported and enabled for the ".ts" and ".tsx" file
extensions. It relies on `typescript-language-server`, `typescript`
and `prettier` for auto formatting.

Syntax highlighting is done with tree-sitter and fallsback to a
tmLanguage grammar if tree-sitter isn't available.

This is its default LSP configuration:

```lisp
(in-package :lem-typescript-mode/lsp-config)

(lem-lsp-mode:define-language-spec (typescript-spec lem-typescript-mode:typescript-mode)
  :language-id "typescript"
  :root-uri-patterns '("package.json" "tsconfig.json")
  :command '("typescript-language-server" "--stdio")
  :install-command "npm install -g typescript-language-server typescript"
  :readme-url "https://github.com/typescript-language-server/typescript-language-server"
  :connection-mode :stdio)
```

and its default configuration:

```lisp
(in-package :lem-typescript-mode)

(define-major-mode typescript-mode lem/language-mode:language-mode
    (:name "TypeScript"
     :keymap *typescript-mode-keymap*
     :syntax-table lem-js-mode::*js-syntax-table*
     :mode-hook *typescript-mode-hook*
     :formatter 'lem-js-mode::prettier)
  (setf (variable-value 'enable-syntax-highlight) t
        (variable-value 'indent-tabs-mode) nil
        (variable-value 'tab-width) 2
        (variable-value 'calc-indent-function) 'lem-js-mode::js-calc-indent
        (variable-value 'line-comment) "//"
        (variable-value 'beginning-of-defun-function) 'lem-js-mode::beginning-of-defun
        (variable-value 'end-of-defun-function) 'lem-js-mode::end-of-defun))
```
