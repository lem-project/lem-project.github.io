---
title: Elixir
---

## Configuration

This mode is built-in in lem, so the only additional configuration is to set the [elixir-lsp](https://github.com/elixir-lsp/elixir-ls) command

``` lisp
(defvar *my/elixir-lsp-path*
  '("sh" "/path/to/language_server.sh"))

(setf (lem-lsp-mode/spec:spec-command
       (lem-lsp-mode/spec:get-language-spec 'lem-elixir-mode:elixir-mode))
      *my/elixir-lsp-path*)
```

**Warning**

lsp integration is still in development.

For more information https://github.com/lem-project/lem/issues/602 and https://github.com/lem-project/lem/issues/578
