---
title: Racket
---

This mode is built in lem, the basic syntax is provided by the `scheme-mode`.

## Configuration

To have a proper REPL, install [r7rs](https://github.com/lexi-lambda/racket-r7rs):
```sh
raco pkg install r7rs
```


Once we have the package installed, we can then clone [r7rs-swank](https://github.com/ecraven/r7rs-swank) to enable
swank functionality:

```sh
git clone https://github.com/ecraven/r7rs-swank.git
```

Then, to start the racket swank server:
```sh
cd sr7rs-swank && sh racket.sh
```

Finally, move back to Lem and call the command `scheme-slime-connect` (by default, IP: 127.0.0.1 and PORT: 4005)
```sh
M-x scheme-slime-connect
```

Done! A nice REPL should have opened as a left buffer.

### Commands


| Key-combination | Function                        |
|:---------------:|:-------------------------------:|
|                 |                                 |
| "C-M-q"         | scheme-indent-sexp              |
| "C-c M-p"       | scheme-set-library              |
| "C-c M-:"       | scheme-eval-string              |
| "C-c C-e"       | scheme-eval-last-expression     |
| "C-x C-e"       | scheme-eval-last-expression     |
| "C-M-x"         | scheme-eval-define              |
| "C-c C-r"       | scheme-eval-region              |
| "C-c C-l"       | scheme-load-file                |
| "C-c M-c"       | scheme-remove-notes             |
| "C-c C-k"       | scheme-compile-and-load-file    |
| "C-c C-c"       | scheme-compile-define           |
| "C-c Return"    | scheme-macroexpand              |
| "C-c M-m"       | scheme-macroexpand-all          |
| "Space"         | scheme-insert-space-and-autodoc |
| "M-a"           | scheme-autodoc                  |
| "C-c C-d C-a"   | scheme-autodoc-with-typeout     |
| "C-c C-d d"     | scheme-describe-symbol          |
| "C-c C-z"       | scheme-switch-to-repl-buffer    |
| "C-c z"         | scheme-switch-to-repl-buffer    |
| "C-c C-b"       | scheme-connection-list          |
| "C-c g"         | scheme-interrupt                |
