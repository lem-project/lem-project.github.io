---
title: Elixir
---

## Configuration

This mode is built-in in lem, so the only additional configuration is to set the [elixir-lsp](https://github.com/elixir-lsp/elixir-ls) location

``` lisp

(setf lem-elixir-mode/lsp-config::*server-path* "/path/to/language_server.sh")

```

**Warning**

lsp integration is still in development.

For more information https://github.com/lem-project/lem/issues/602 and https://github.com/lem-project/lem/issues/578
