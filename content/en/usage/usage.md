---
title: Usage
weight: -50
---
{{< toc >}}



The documentation is in progress. You can find a list of available keys and commands in [keybindings](/usage/keybindings/), and you can get this list in Lem itself with `M-x documentation-describe-bindings` (new in Lem 2.1).


# Lem Manual for Users

Lem has Emacs-like keybindings, as well as a vi emulation (`M-x vi-mode`).

So, to open a file, press `C-x C-f` (you get the file selection dialog shown above). To save it, it's `C-x C-s`. To save many buffers at once, use `C-x s`.

To switch windows (aka splits of a screen): `C-x o` ('o' letter) and `M-o`. To make a window fullscreen: `C-x 1`. To split it vertically: `C-x 3` and horizontally: `C-x 2`. To make the current window disappear: `C-x 0` (zero).

To switch buffers: `C-x b`.

To **run an interactive command by name**: `M-x` (`alt-x`).

To show the context menu: `Shift-F10`.

Quit Lem with `C-x C-c`.

See this Emacs & Slime cheatsheet to find more: https://lispcookbook.github.io/cl-cookbook/emacs-ide.html#appendix

## Opening files

As said above, the shortcut to open a file is `C-x C-f` (aka `M-x
find-file`). This presents a dialog to choose a file, with
autocompletion, starting at the buffer's directory. We can also search
for files in a **project** or recursively in **subdirectories**.

You can open a file in another "window", aka if Lem's screen is split in two, open the file in the other screen. Use `C-x 4 f` (`M-x find-file-other-window`). This splits the screen vertically if needed.

You can then resize the windows. Look for the "shrink-" and "grow-" commands.

You can **drag and drop** a file from your desktop file manager to open
it. This works with the SDL2 GUI.


### Filer - project explorer

> This feature was added in Lem 2.1

The shortcut `C-x d` opens a project explorer on the left side. Another keypress closes the Filer.

<img class="" src="/filer.png" alt="Lem Filer on the left window">


### Find file in project

> Project related commands were added in Lem 2.1

Use `M-x project-find-file` to choose a file among the list of all files pertaining to the current project. This command is bound to `C-x p f`.

A project is recognized by typical files or directories. For example,
a directory containing a `.git/` subdirectory or a `.project`,
`.projectile`, `.ignore`, `configure.ac` or `Makefile` file is
considered the root of a project. The actual list is a bit longer, it should "just work".

When you call the `project-find-file` command, Lem looks at the
buffer's working directory if it recognizes a project root. If not, it
goes up one directory and looks again, and continually until finding a
project root. It stops at the home directory.

If no project root was found, Lem uses the buffer's directory.

There are also the commands:

| Command | Key-combination | Function                                                        |
|:-------:|:-------:|:-------------------------------------------------------------------------:|
| `project-kill-buffers` | `C-x p K` | delete all this project's buffers                    |
| `project-root` |                     | display the project root         |
| `project-find-file-next-window` | `C-x 4 p f` | open a file in another window              |
| `project-root-directory` | `C-x p d` | open the project root with Lem's directory-mode      |
| `project-root-directory-next-window` |  | open the project root in another window          |

These commands allow to **switch** between projects:

| Command | Key-combination | Function                                                        |
|:-------:|:-------:|:-------------------------------------------------------------------------:|
| `project-save` | `C-x p s` | save the current project. This populates the text file on `(lem-home)/history/projects`. |
| `project-switch` |`C-x p p`| choose a saved project and find a file in it |
| `project-unsave` |`C-x p u`| remove a project from the history            |


Configuration:

- for `project-kill-buffers`:
  - if `*delete-repl-buffer*` is non t, we don't delete the REPL buffer.
  - if `*delete-last-buffer*` is non nil, we will delete the last buffer. This would cause Lem to exit.


The **filer** (`C-x d`, see above) opens the project root.

The project's file chooser will try to use the `fdfind` program to list the
project files. In that case, common development directories such as
`.git/` and `node_modules/` will be excluded. Read more below.


### Find file recursively

> find-file-recursively was added in Lem 2.1

The command `find-file-recursively` is not bound to a key by default. This command opens a selection prompt and lists all files under the buffer's directory, recursively, letting you choose and open a file deep in the directory tree quickly.

<img class="" src="/find-file-recursively.png" alt="">

> Note: contrary to `project-find-file`, it starts the search at the buffer's directory, not at the project root.

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

## Buffers, windows and workspaces management

### Switching buffers

To switch buffers, use `C-x Left/Right arrow` (aka `M-x previous-buffer` and `next-buffer`).

To choose a buffer interactively, use `C-x b` (aka `M-x
list-buffers`). You are presented a completion window. Type some text
to start narrowing the buffers list matching your entry. But that's not all.

You can also use Space to select or deselect entries, then use a right
click to choose an action to apply on the selected buffers. Default
actions are to kill the selected buffers, or to save them.

### Creating new buffers

A buffer contains some text to display, but is not necessarily tied to a file.

Try using the `C-x b` command and typing the name of a buffer that
doesn't exist. Lem will ask confirmation to create it. If you confirm,
you'll get a buffer that is not tied to a file on your filesystem. You
can write whatever you want, as well as enable a major mode (`M-x
lisp-mode`, `M-x markdown-mode`…). You'll note that the command `C-x
C-s` (`save-current-buffer`) doesn't work, saying "No file name". This
is correct, no file is associated to this buffer. To save this buffer
to a new file, use `C-x C-w` (`M-x write-file`). It asks for a
filename, and saves the buffer to disk.

### Windows

A Lem "screen" can be divided into multiple windows.

To split your screen vertically and have two vertical windows, use
`C-x 3`. To do so horizontally, use `C-x 2`. You can divide your
screen into any number of windows you like.

To widen the current window, use `C-x 1`
(`delete-other-windows`). This deletes other windows, but not their
buffers.

To make the current window disappear, use `C-x 0` (a zero) (`delete-active-window`).

To switch windows (aka splits of a screen), use `C-x o` ('o' letter) or `M-o`.

To switch to the previously active window, use `M-x
switch-to-last-focused-window`, which is not bound to a key by
default.

These other commands are not bound to a key:

| Command | Key-combination | Function                                                        |
|:-------:|:-------:|:-----------------------------------------------------------------------:|
| `window-move-down/up` |  | Go to the window at the bottom / at the top          |
| `window-move-left/right` |  | Go to the window at the left / at the right          |


### Tabs

Lem has a rudimentary support for tabs.

Activate the tab bar with `M-x toggle-tabbar`. This shows a tab for every buffer.

On the GUI version of Lem, you can click on them.

### Workspaces

Lem has a frame multiplexer, aka "workspaces" or "screen
manager".

This feature allows to create many workspaces, or screen
configurations, on the same Lem instance. We can create a new
workspace, open buffers and arrange the window as we like (split
vertically, horizontally…), and switch to another workspace where the
window arrangement and the displayed buffers are different.

The frame multiplexer bindings start with `C-z`:

| Command | Key-combination | Function                                                        |
|:-------:|:-------:|:-----------------------------------------------------------------------:|
| `frame-multiplexer-create-with-new-buffer-list` | `C-z c` | create a new workspace          |
| `frame-multiplexer-next` | `C-z n`              | go to the next workspace         |
| `frame-multiplexer-prev` | `C-z p`              | go to the previous workspace     |
| `frame-multiplexer-delete` | `C-z d`            | delete the current workspace     |
| `toggle-frame-multiplexer` |                    | enable or disable (and loose) all workspaces     |

The frame multiplexer is enabled by default. It shows a buffer indicator on the top left corner of the editor.

You can disable it with `M-x toggle-frame-multiplexer`.

Well, if you want to be sure, add this in your Lem init file (`~/.lem/init.lisp` or `~/.config/lem/init.lisp` since Lem 2.2):

     (remove-hook *after-init-hook* 'lem/frame-multiplexer::enable-frame-multiplexer)


## vi and emacs modes

Use `M-x vi-mode` and `M-x emacs-mode`.

You can also start Lem in any given mode by adding this in your init file:

```lisp
;; Start in vi-mode
(lem-vi-mode:vi-mode)
```

See more in the Configuration section.


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

**Note:** this command was added in Lem 2.1.

<img class="" src="/documentation-describe-bindings.png" alt="">


## Keyboard macros

Lem supports recording and playing keyboard macros.

Start recording with `C-x (` (`M-x kbdmacro-start`).

Now, press the keys and keyboard shortcuts that you want to replay automatically.

Stop recording with `C-x )` (`M-x kbdmacro-end`).

And now, re-play your key combination with `C-x e` (`M-x kbdmacro-execute`).

Another command you might want to use is `M-x apply-macro-to-region-lines`,
to re-play the macro only in the selected region.


## grep

    M-x grep

this presents the results in a two-panes window. You can edit lines in the results buffer, changes are reflected immediately on the files, and updated on the right side. You can use search and replace `M-x query-replace` in the results buffer.

## multiple cursors

Use `M-C` (Alt and capital c), `M-x add-cursors-to-next-line` to add a cursor to the next line.

## opening links

Lem will recognize some forms of links, specifically **URLs** and
**links to files**, and will write them with a special face attribute
(in my case, an underscore). You can open such a link with the command
`M-x open-link` (not bound to a key by default).

- URL: opens your web browser
- file (the link must start with `file://`): Lem opens the file.

## Version control with lem/legit (Git, experimental)

Simple Git support is available for reckless users.

Since July, 16th of 2024, it is available by default. On older Lem versions, load it with:

    (ql:quickload "lem/legit")

Start legit with:

    C-x g

or `M-x legit-status`.

Available features are:

- see status (staged and unstaged changes, latest commits…)
- stage files and diff hunks ("s", "u")
- commit ("c")
- push, pull the current branch ("P p" and "P f")
- see the commits log ("l l", then "f"/"b" and "F"/"B" for pagination) (NEW in July, 2024)
- interactive rebase (best case scenario, Linux only)
  - "r i": start an interactive rebase
  - "r a": abort an ongoing rebase (started by you or another process)
- see the help with "?"

and basic support for Mercurial and Fossil.

[See its README on GitHub](https://github.com/lem-project/lem/blob/main/extensions/legit/README.md), wait for more and come talk, it's actually easy to contribute ;)

![](https://raw.githubusercontent.com/lem-project/lem/main/extensions/legit/lem-status.png)


## Misc

### Code formatting

Use `M-x format-current-buffer`, or enable auto-formatting like this:

    (setf lem:*auto-format* t)

Formatters are currently defined for c (`clang-format`), go (`gofmt`), js and json (`prettier`), and lisp of course, but you can add your own, see the Configuration page.


### Color preview

Use: `M-x color-preview` to highlight strings denoting a color (such as "blue" or "#ffffff") in their color.

### Color picker (SDL2)

The SDL2 frontend provides a graphical color picker.

To invoke it, simply write a color name or representation inside a string, enable the color preview, and click on the color. Press `q` (`color-picker-quit`) to close it.

<img class="" src="/lem-color-picker.png" alt="Lem color picker" width="600px">


### Line numbers

Use: `M-x toggle-line-numbers`

or `(lem/line-numbers:toggle-line-numbers)`

Use `(setf lem/line-numbers:*relative-line* t)` to use relative line numbers (added after Lem 2.1)

### Read-only

Use: `M-x toggle-read-only`

aka `(lem-core/commands/buffer:toggle-read-only)`

### Auto-save

Use: `M-x auto-save-mode`, aka `(lem/auto-save::auto-save-mode t)`.

This one is a global mode: autosave is enabled for all buffers.

You can also use a minor mode: `M-x toggle-auto-save`, aka
`(lem/auto-save:toggle-auto-save)`, to enable auto-save for the
current buffer only.


### Full screen

Use: `M-x toggle-frame-fullscreen`

### Mouse support (ncurses)

The GUI version supports the mouse, which is more difficult to bring
to the terminal, so the feature is available in an optional contrib module.

You can try it with:

    M-x load-contrib RET mouse-sgr1006 RET

and now you can click around in windows.

### Transparent background (SDL2 only)

Set a transparent background with this line in your init file:

    (sdl2-ffi.functions:sdl-set-window-opacity (lem-sdl2/display::display-window lem-sdl2/display::*display*) 0.9)


### Font size (SDL2 only)

Use: `font-size-increase` (`C-+`), `font-size-decrease` (`C--`) and `font-size-set [number]`.
