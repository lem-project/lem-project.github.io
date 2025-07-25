---
title: Supported languages
weight: -50
---

## Supported languages

To see all supported languages and modes, see Lem's [extensions directory](https://github.com/lem-project/lem/tree/main/extensions).

Languages include: asm, C, Dart, Go, Haskell, HTML and CSS, Java, JavaScript, Common Lisp, Scheme, Nim, OCaml, Python, Rust, Scala, Swift, Shell, Lua, SQL, Ruby, Erlang, Elixir, Vue…

Other modes include: asciidoc, dot, JSON, LSP, Makefile, nix, paredit, patch, posix-shell, review, VI, yaml…

Please choose a mode on the sidebar to see more!

## Configuration

All modes support a hook mechanism. A hook allows to run an arbitrary
function when a mode is activated.

You can add a hook with `add-hook`.

For example:

```lisp
(add-hook lem-c-mode::*c-mode-hook* #'lem-vi-mode/commands:vi-insert)  ;; start in vi insert mode.
```
