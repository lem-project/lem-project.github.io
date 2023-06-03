---
title: JavaScript
---

## Configuration

An example JS config for LSP:

```lisp
(lem-lsp-mode/lsp-mode::define-language-spec
    (js-spec lem-js-mode:js-mode)
  ;; thanks @sasanidas
  :language-id "javascript"
  :root-uri-patterns '("package.json" "tsconfig.json")
  :command '("typescript-language-server" "--stdio")
  :install-command "npm install -g typescript-language-server typescript"
  :readme-url "https://github.com/typescript-language-server/typescript-language-server"
  :connection-mode :stdio)
```