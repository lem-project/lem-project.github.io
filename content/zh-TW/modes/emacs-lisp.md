---
title: Emacs Lisp
---


## Configuration

This mode is built in Lem, there is the basic command of `run-elisp` that launches a basic REPL interaction.

For a more advance development experience, you can install [Lemmington](https://github.com/lem-project/lemmigton) that enable some RPC interactions.

**For now, only autocompletion is supported.**


## Usage

Launch an interactive REPL with the command `run-elisp`, to do this, you'll need to install [ELTR](https://codeberg.org/sasanidas/eltr), a GNU Emacs
CLI REPL (it should also be available in the $PATH).


### Commands

| Key-combination | Function          |
|:---------------:|:-----------------:|
|                 |                   |
| "C-c C-r"       | elisp-eval-region |
| "C-c C-c"       | elisp-eval-defun  |
| "C-c C-l"       | elisp-load-file   |
