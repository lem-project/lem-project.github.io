---
title: Keybindings
weight: -50
---

The documentation is in progress. You can find a list of available keys and commands in [default-keybindings.md](https://github.com/lem-project/lem/blob/main/docs/default-keybindings.md), and you can get this list in Lem itself with `M-x documentation-describe-bindings` (new after Lem 2.0).


# Lem Manual for Users

Lem has Emacs-like keybindings, as well as a vi emulation (`M-x vi-mode`).

So, to open a file, press `C-x C-f` (you get the file selection dialog shown above). To save it, it's `C-x C-s`. To save many buffers at once, use `C-x s`.

To switch windows (aka splits of a screen): `C-x o` ('o' letter) and `M-o`. To make a window fullscreen: `C-x 1`. To split it vertically: `C-x 3` and horizontally: `C-x 2`. To make the current window disappear: `C-x 0` (zero).

To switch buffers: `C-x b`.

To run an interactive command by name: `M-x` (`alt-x`).

To show the context menu: `Shift-F10`.

Quit Lem with `C-x C-c`.

See this Emacs & Slime cheatsheet to find more: https://lispcookbook.github.io/cl-cookbook/emacs-ide.html#appendix

### Switching buffers

Use `C-x b` (aka `M-x list-buffers`). But don't stop here, it's a rich command.

You are presented a "modale" window. Type some text to start narrowing the buffers list matching your entry.

You can also use Space to select/deselect entries, then use a right click to choose an action to apply on the selected buffers. Default actions are to kill the selected buffers, or to save them.

### vi and emacs modes

Use `M-x vi-mode` and `M-x emacs-mode`.

You can also start Lem in any given, see the configuration section.

### Auto-completion (abbrev)

Lem has a system of *abbreviation* that permits to auto-complete any
text that was previously entered in any text buffer.

By default, `abbrev` is bound to `M-/`

In vi's insert-mode, it is also bound to `C-p`.

There is also the command `abbrev-with-popup-window` that shows the list of completion candidates. It is not bound by default. We can bind it to a key:

~~~lisp
;; C-n is originally bound to next-line.
(define-key *global-keymap* "C-n" 'lem/abbrev:abbrev-with-pop-up-window)
~~~

and in vi-mode:

~~~lisp
;; C-n is originally bound to next-line.
(define-key lem-vi-mode:*insert-keymap* "C-n" 'lem/abbrev:abbrev-with-pop-up-window)
~~~


### Describe keys

To know what function is bound to a key binding, use `C-x ?` (`M-x describe-key`).

### Describe and list available bindings

To see the available key bindings in the current keymap, use `M-x describe-bindings`.

You can use `M-x describe-mode` to understand in which mode the editor is in the current buffer.

You can do more and *list all Lem's existing keybindings* with `M-x documentation-describe-bindings`. It inspects Lem and lists keybindings, grouped by modes:

- move, edit, mark, word, S-expressions, file, buffer, window, multiple-cursors, process, help, font and other.

**Note:** this command was added after Lem 2.0.

<img class="" src="/lem-page/documentation-describe-bindings.png" alt="">


### grep

    M-x grep

this presents the results in a two-panes window. You can edit lines in the results buffer, changes are reflected immediately on the files, and updated on the right side. You can use search and replace `M-x query-replace` in the results buffer.

### multiple cursors

Use `M-C` (Alt and capital c), `M-x add-cursors-to-next-line` to add a cursor to the next line.
