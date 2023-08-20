---
title: Language Server Protocol support
weight: 10
---

**Warning**

LSP integration is still in development.

For more information https://github.com/lem-project/lem/issues/602 and https://github.com/lem-project/lem/issues/578

For information on each supported programming language, see the Modes menu.

## Working with a language's Language Server Protocol (LSP)

For some languages it should work without doing anything (for example
Go, if you have `gopls`). Otherwise, a configuration step is required.

This is an example JS config for LSP. Place it in your `~/.lem/init.lisp` (or `~/.config/lem/init.lisp` since Lem 2.2) (or evaluate it with `M-:`).

```lisp
(lem-lsp-mode/lsp-mode::define-language-spec
    (js-spec lem-js-mode:js-mode)
  :language-id "javascript"
  :root-uri-patterns '("package.json" "tsconfig.json")
  :command '("typescript-language-server" "--stdio")
  :install-command "npm install -g typescript-language-server typescript"
  :readme-url "https://github.com/typescript-language-server/typescript-language-server"
  :connection-mode :stdio)
```
