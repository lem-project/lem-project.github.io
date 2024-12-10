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

## Find file recursively

The command `find-file-recursively`, added after Lem 2.0, is not bound to a key by default. This command opens a selection prompt and lists all files under the buffer's directory, recursively, letting you choose and open a file deep in the directory tree quickly.

<img class="" src="/lem-page/find-file-recursively.png" alt="">

The method to search all files recursively is configurable. Lem first tries with any of these external programs: `fd`, `fdfind` (which is `fd` installed from Debian repositories) and `find` (the Unix find). If none of these programs exist, it falls back to a Lisp version.

[fd](https://github.com/sharkdp/fd) is an external tool, that is fast and that filters out some directories by default: "node_modules/", ".git/" and such. The Lisp method doesn't exclude them.

But what happens if you call this command on your HOME, or in a directory with lots and lots of files? The command has a 5 seconds timeout (by default). After that time, the process is aborted and Lem uses the simpler `find-file` command.

### Configuration

You can bind the command to a keybinding:

~~~lisp
(lem:define-key lem:*global-keymap* "C-x F" 'lem-core/commands/file:find-file-recursively)
~~~

The variables and methods are inside the Lisp package `:lem-core/commands/file`.

You can change the order of the finder programs:

~~~lisp
;; these must be keywords, not strings.
(setf *find-programs* (list :fdfind :fd :find :lisp))
~~~

or choose the one to use:

~~~lisp
(setf *find-program* :lisp)
~~~

You can change the timeout:

~~~lisp
(setf *find-program-timeout* 5)
~~~

and change the behaviour of the methods that return the list of files
and directories. They are written as CLOS generic methods specializing
on the `*find-program*` keyword, so you can use `:before`, `:around`
or `:after` qualifiers.

~~~lisp
(defmethod get-files-recursively :around ((finder (eql :lisp)))
  (let ((results (call-next-method)))
     (do-something-with-the-results)))
~~~


## Switching buffers

Use `C-x b` (aka `M-x list-buffers`). But don't stop here, it's a rich command.

You are presented a "modale" window. Type some text to start narrowing the buffers list matching your entry.

You can also use Space to select/deselect entries, then use a right click to choose an action to apply on the selected buffers. Default actions are to kill the selected buffers, or to save them.

## vi and emacs modes

Use `M-x vi-mode` and `M-x emacs-mode`.

You can also start Lem in any given, see the configuration section.

## Auto-completion (abbrev)

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


## Describe keys

To know what function is bound to a key binding, use `C-x ?` (`M-x describe-key`).

## Describe and list available bindings

To see the available key bindings in the current keymap, use `M-x describe-bindings`.

You can use `M-x describe-mode` to understand in which mode the editor is in the current buffer.

You can do more and *list all Lem's existing keybindings* with `M-x documentation-describe-bindings`. It inspects Lem and lists keybindings, grouped by modes:

- move, edit, mark, word, S-expressions, file, buffer, window, multiple-cursors, process, help, font and other.

**Note:** this command was added after Lem 2.0.

<img class="" src="/lem-page/documentation-describe-bindings.png" alt="">


## grep

    M-x grep

this presents the results in a two-panes window. You can edit lines in the results buffer, changes are reflected immediately on the files, and updated on the right side. You can use search and replace `M-x query-replace` in the results buffer.

> To set the default args for grep command, put this in your `~/.lem/init.lisp` file.
> ``` 
>   (setf lem/grep:*grep-args* "-niHI")
>   (setf lem/grep::*last-query* "git grep -niHI ")
> ```  
>
    
## multiple cursors

Use `M-C` (Alt and capital c), `M-x add-cursors-to-next-line` to add a cursor to the next line.
