---
title: Extensions and modes
weight: -2
---

# Lem contribs

Lem contribs are not loaded at startup.

    M-x load-library

and choose a library (for example, tetris). Then, you can call this contrib's commands (in that case, `M-x tetris`).

# How to write a Lem mode

A major mode is associated to a keymap and commands. It is typically
used for a programming language mode, but also for non-programming
modes (directory-mode, tetris-mode…), or to complement a programming
mode keymap (paredit).

If you want to add support for another programming language, please see Lem's `modes/` directory (and get in touch!).

Also, remember that you don't need to create a major mode to add custom commands to Lem. A `define-command` in that case is enough, please see [configuring Lem](/usage/configuration/).

But, how do we create a new major mode?

Create a .lisp file and create a new package. You'll want to "use" `:lem`:

~~~lisp
(defpackage :lem-awesome-mode
  (:use :cl :lem)
  (:export :awesome-command ;; <-- we'll write them
           :awesome-mode))
(in-package :lem-awesome-mode)
~~~

Name the major mode to be created and name its keymap:

~~~lisp
(define-major-mode awesome-mode ()
    (:name "Awesome mode"
     :keymap *awesome-mode-keymap*)
  ;; you can do write more startup code here.
  )
~~~

> You can also create a minor mode with `lem:define-minor-mode`. A minor mode will only complement a major mode and won't overwrite all its keybindings.

It's time to write your code and define commands.

~~~lisp
(define-command awesome-command () ()
  (message "Hello Lem!"))

(define-key *awesome-mode-keymap* "!" 'awesome-command)
~~~

Don't forget to export both `:awesome-mode` and `:awesome-command` in your package definition.

Now, open any file and activate your mode with `M-x awesome-mode`. Try to write a "!": you should see the "Hello Lem!" message pop-up. You'll have to re-activate the mode you were in to stop this functionnality.

You can take inspiration from all Lem modes in `modes/` or `src/ext/`. Do a `grep` for "define-major-mode" or "define-minor-mode".


# Third-party Lem libraries

* [Pareto](https://github.com/40ants/lem-pareto) - A mode, complement to the built-in Paredit mode, similar to Emacs' Lispy-mode. Makes Lisp code editing even more efficient!
