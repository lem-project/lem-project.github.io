---
title: Guile
---


## Configuration

This mode is built in lem, there is the basic command of `start-scheme-repl` that launches a basic
REPL interaction.

For a more advance development experience, I highly recommend using the [r7rs-swank](https://github.com/ecraven/r7rs-swank) library.

Here is a configuration example:

```lisp
(defvar *swank-port* 4015)

(setf lem-scheme-mode::*default-port* *swank-port*
      lem-scheme-mode:*use-scheme-autodoc* :auto
      lem-scheme-mode:*scheme-swank-server-run-command* 
      `("guile" "--r7rs"
        "-l" ".lem/CUSTOM-PATH/r7rs-swank/guile-swank.scm" 
        "-c" 
        ,(format nil "(import (guile-swank)) (start-swank ~a)" 
                *swank-port*))
      lem-scheme-mode:*use-scheme-repl-shortcut* t ) 

```

The idea is to load the scheme file "guile-swank.scm", so that the swank server start,
for now, the path is concatenated from where the buffer is located, so I recommed to
just launch the repl in the tmp buffer.


## Usage

Launch an interactive REPL with the command `scheme-slime`, this will start the REPL.


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
