---
title: Supported languages
weight: -50
---

## Supported languages

To see all supported languages and modes, see Lem's [extensions directory](https://github.com/lem-project/lem/tree/main/extensions).

Languages include: asm, c, css, dart, go, haskell, html, java, js, lisp, nim, ocaml, python, rust, scala, scheme, swift, shell, sql…

Other modes include: asciidoc, dot, json, lsp, makefile, paredit, patch, posix-shell, review, vi, yaml…

Please choose a mode on the sidebar to see more!

## Configuration

All modes support a hook mechanism. A hook allows to run an arbitrary
function when a mode is activated.

You can add a hook with `add-hook`.

For example:

```lisp
(add-hook lem-c-mode::*c-mode-hook* #'lem-vi-mode/commands:vi-insert)  ;; start in vi insert mode.
```
