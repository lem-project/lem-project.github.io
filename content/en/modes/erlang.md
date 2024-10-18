---
title: Erlang
---

`erlang-mode` supports:

- syntax highlighting
- REPL: `M-x run-erlang`
  - once started, it uses its own `run-erlang-mode` major mode.
- send and eval region (async): `C-c C-r` aka `M-x erlang-eval-region`.
- LSP support


## Configuration

Erlang mode will connect to your local ELP [Erlang Language Platform](https://github.com/WhatsApp/erlang-language-platform) installation.

Configure the ELP binary's location by setting `*lsp-elang-elp-server-path*`:


```lisp
(defvar lem-erlang-mode::*lsp-erlang-elp-server-path*
  (uiop:native-namestring "/usr/local/bin/elp")
   "Adapt to your system's ELP path.")
```

Currently, Erlang mode does not add any LSP features on its own. The integration is experimental with the purpose of figuring out how to use the existing Lem/LSP features and how to add Erlang specific features.
