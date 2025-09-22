---
title: JavaScript
---

## LSP configuration

LSP is built-in for JavaScript mode.

Its config is defined in the package `lem-js-mode/lsp-config`.

Before January, 2025, you had to add a configuration snippet
yourself. An example:

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
