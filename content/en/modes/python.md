---
title: Python
---

**warning**: this documentation is a work in progress.

## Features

`python-mode` supports:

- syntax highlighting
- `M-x run-python` command
- `M-x python-eval-region`
- LSP with `python-lsp-server`

## Python LSP

This is the default Python LSP config.

Lem will try to install [python-lsp-server](https://github.com/python-lsp/python-lsp-server) for you with

    pip install python-lsp-server

```lisp
(in-package :lem-python-mode/lsp-config)

(lem-lsp-mode:define-language-spec (python-spec lem-python-mode:python-mode)
  :language-id "python"
  :root-uri-patterns '("setup.py" "pyproject.toml" "requirements.txt" "poetry.lock")
  :command '("pylsp")
  :install-command "pip install python-lsp-server"
  :readme-url "https://github.com/python-lsp/python-lsp-server"
  :connection-mode :stdio)
```

See:

- [extensions/python-mode/lsp-config.lisp](https://github.com/lem-project/lem/blob/main/extensions/python-mode/lsp-config.lisp)
