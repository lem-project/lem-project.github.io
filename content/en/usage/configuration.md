---
title: Configuration
weight: 5
---

Lem loads `~/.lem/init.lisp` when starting up.

You probably want to start it with

    (in-package :lem-user)

Otherwise, be sure to refer to Lem functions with the `lem:` prefix.

{{< toc >}}


## Show the completion list instantly

The completion pop-up, like the one we get with `M-x`, wants us to
press TAB before we get the completion candidates. If you want to open
it right away, add this to your init file:

```lisp
(add-hook *prompt-after-activate-hook*
          (lambda ()
            (call-command 'lem/prompt-window::prompt-completion nil)))

(add-hook *prompt-deactivate-hook*
          (lambda ()
            (lem/completion-mode:completion-end)))
```

You can start typing and the list will narrow down.


## Choosing the completion pop-up position: center, top, bottom

Lem's completion pop-up is by default centered on the middle of the
screen.

Since May of 2024, it is possible to choose its position: à la Emacs at the bottom? À la VSCode at the top?

If you want the completion pop-up at the bottom like this:

<img class="" src="/lem-completion-bottom.png" alt="Lem's completion pop-up at the window bottom.">

Add this to your init file:

```lisp
(setf lem-core::*default-prompt-gravity* :bottom-display)
(setf lem/prompt-window::*prompt-completion-window-gravity* :horizontally-above-window)
(setf lem/prompt-window::*fill-width* t)
```

If you want it at the top like this:

<img class="" src="/lem-completion-top.png" alt="Lem's completion pop-up at the window top.">

Add this to your init file:

```lisp
(setf lem-core::*default-prompt-gravity* :top-display)
(setf lem/prompt-window::*fill-width* t)
```

There is more. You can allow the order of completions to be reversed:
this is helpful when the prompt is at the bottom of the screen, so
that the firts completion candidate is just above the prompt, so you
don't have to move your eyes. Use this so that completions are
reversed in regular prompts, but normal in code completion::

```lisp
(add-hook *prompt-after-activate-hook*
          (lambda ()
            (setf lem/completion-mode::*completion-reverse* t)
            (call-command 'lem/prompt-window::prompt-completion nil)))

(add-hook *prompt-deactivate-hook*
          (lambda ()
            (setf lem/completion-mode::*completion-reverse* nil)
            (lem/completion-mode:completion-end)))
```


## Binding keys

We will learn how to bind your own keys to commands. Afterwards we'll learn how to write your own interactive commands.

### `define-key`

Use the `define-key` function to associate a keybinding to a command:

~~~lisp
(lem:define-key lem:*global-keymap*
    "C-x F" 'lem-core/commands/file:find-file-recursively)
~~~

Its first argument is a *keymap*. Essentially, there is a keymap for
global keybindings, for each programming language mode (such as
`lem-python-mode::*python-mode-keymap*`, you can find it in Lem with
the autocompletion), and for every other tool: there is a keymap for
`grep` mode, for the directory mode, for the different vi mode states,
etc.

### `define-keys`

You can also use `lem:define-keys` to define more than one key at once:

~~~lisp
;; C-h is initially bound to delete-previous-char
(define-keys *global-keymap*
  ("C-h b" 'describe-bindings)
  ("C-h k" 'describe-key)
  ("C-h a" 'lem-lisp-mode:lisp-apropos)
  ("C-h c" 'apropos-command)
  ("C-h p" 'lem-lisp-mode:lisp-apropos-package)
  ("C-h f" 'lem-lisp-mode:lisp-describe-symbol))
~~~

But wait, there is more.

### Defining a keymap

Did you notice that all the above commands have
the `C-h` prefix? We can refactor this.

First, we define a keymap object. Let's take another example, the
frame-multiplexer (aka tabs):

~~~lisp
(defvar *keymap*
  (make-keymap :name '*frame-multiplexer-keymap*)
  "Keymap for commands related to the frame-multiplexer.")
~~~

Now we can use `(define-key *keymap* key command)` (singular), like this:

~~~lisp
(define-key *keymap* "c" 'frame-multiplexer-create-with-new-buffer-list)
(define-key *keymap* "d" 'frame-multiplexer-delete)
(define-key *keymap* "p" 'frame-multiplexer-prev)
(define-key *keymap* "n" 'frame-multiplexer-next)
(define-key *keymap* "r" 'frame-mulitplexer-rename)
~~~

And now we can define the prefix key for our keymap and all its sub-keys commands:

~~~lisp
(define-key *global-keymap* "C-z" *keymap*)
~~~

As a result, we defined `C-z c` for `'frame-mulitplexer-create-with-new-buffer-list`.

### Change the Alt (Meta) key

The editor variable `meta-prefix-keys` allows to treat keys as the Meta (Alt) prefix without timeout.

- when enabled, pressing a prefix key followed by another key produces Meta+key immediately
- pressing the same prefix key twice produces the prefix key itself
- implemented in core layer, works across all frontends

Example:

```lisp
;; Use Escape as Meta prefix (simplest)
(setf (lem:variable-value 'lem:meta-prefix-keys :global) t)

;; Use a specific key as Meta prefix
(setf (lem:variable-value 'lem:meta-prefix-keys :global)
      (lem:make-key :ctrl t :sym ";"))

;; Use multiple keys as Meta prefix
(setf (lem:variable-value 'lem:meta-prefix-keys :global)
      (list (lem:make-key :sym "Escape")
            (lem:make-key :ctrl t :sym ";")))
```

| Input | Output |
|-------|--------|
| Escape x | M-x |
| Escape Escape | Escape |
| Escape C-c | M-C-c |

## Undefining keys

Did you define keys? It's also possible to *undefine* them.

*NOTE: this function was added the 1st of January, 2025.*

Use `undefine-key` and `undefine-keys`.

Example:

```lisp
(undefine-key *paredit-mode-keymap* "C-k")

(undefine-keys *paredit-mode-keymap* ("C-k")
  ("C-L"))
```


## Writing one's own commands

Use `define-command`:

```lisp
(in-package :lem)
(define-command open-init-file () ()
    ;; @sasanidas
    (lem:find-file
        (merge-pathnames "init.lisp" (lem-home))))
```

or copy-paste this with `M-:`

```lisp
(lem:define-command open-init-file () ()
    (lem:find-file
        (merge-pathnames "init.lisp" (lem:lem-home))))
```

You can now call it with `M-x open-init-file`.

### Commands arguments

How can we **give an argument to a command**, how can we run it on a region?

The `define-command` examples above have two empty `() ()`. This is
the place for parameters names and special argument descriptors.

We can tell it to accept a prefix argument (a number), we can make the
command ask for user input (a string, an integer, a buffer, a file)
and work on region delimiters.

#### Universal prefix argument

We tell the following command that it accepts a prefix
argument. We use :universal and `n` is the argument name to use in the
command body. `n` defaults to 1.

~~~lisp
(define-command hellos (n) (:universal)
  (dotimes (i n)
    (insert-string (current-point) "hello ")))
~~~

Call this command `M-x hellos` and it writes 1 "hello".

Call it with `C-u 3 M-x hellos` and it writes "hello" 3 times.


#### Optional arguments and default values

We can also use `(&optional n) (:universal-nil)` or `(&optional (n 3)) (:universal-nil)` to
change the default value.

`:universal-nil` is similar to `:universal` but doesn't default to 1.

#### Ask for a number

Use `:number`. This prompts the user for a number.


#### Ask for a string

Use `:string` for the arg-descriptor, and `(:string "My prompt: ")` to give a custom prompt.

This is how a directory-mode is done:

~~~lisp
(define-command simple-message (s) ((:string "Enter a string: "))
  (message s))
~~~

Run it with `M-x simple-message`.

#### Ask for a buffer

Use `:buffer`. It defaults to the current buffer's name.

There is also `:other-buffer` that defaults to the other buffer's name.

#### Ask for a file

Use `:file` to prompt for a file. It defaults to the current buffer's directory.

There is also `:new-file` that defaults to the buffer's directory and must not be existing.


#### Run on region

Next, how can we run a command on a region? A region is defined with a
start and end point. We have to tell the command it operates on a
region, that way it gives us the two points.

We do so by declaring two `start` and `end` arguments, and a special
argument descriptor: `:region`. Here's how it is done for the `python-eval-region` command:


~~~lisp
(define-command python-eval-region (start end) (:region)
  (unless (alive-process-p)
    (editor-error "Python process doesn't exist."))
  (lem-process:process-send-input *process* (points-to-string start end)))
~~~

#### Multiple arguments

We can have multiple arguments, for example:

```lisp
(define-command multiple-args (regex &optional arg) ((:string "Enter a regex:") :universal-nil)
  ...)
```

## Write commands with a persisted history

As of August, 2025, `Alt-x` commands in Lem are persisted across
sessions. On restart, your last used Alt-x commands will be listed
first in the completion pop-up. Other commands remember their entries
too, such as `Alt-x project-switch`.

This section is intentend to developers. It describes how one can use
the built-in history package to write commands with such a persisted
history.

Indeed, Lem provides primitives to save and restore data to and from its
config directory.

The process isn't automatic and we present how to do it, following how
it is done for the project commands, in `lem/core/commands/project.lisp`.

The Lisp functions to use to manipulate the history are inside the
`lem/common/history` package:

- `make-history`
- `add-history` or `remove-history`, followed by `save-file`
- `history-data-list` to get the data from a history.

First, create a global variable to hold the history object, a structure.

```lisp
(defvar *projects-history*)

(defun history ()
  "Return or create the projects' history struct.
  The history file is saved on (lem-home)/history/projects"
  (unless (boundp '*projects-history*)
    (let* ((pathname (merge-pathnames "history/projects" (lem-home)))
           (history (lem/common/history:make-history :pathname pathname)))
      (setf *projects-history* history)))
  *projects-history*)
```

Look how we can use `(merge-pathnames "history/projects" (lem-home))`
to refer to the file under `~/.config/lem/history/projects` (or
`~/.lem/history/projects` for older Lem versions).

Once created, `*projects-history*` looks like this:

```lisp
#S(LEM/COMMON/HISTORY::HISTORY
   :PATHNAME #P"/home/vindarel/.lem/history/projects"
   :DATA #("/home/vindarel/bacasable/lisp-projects/lem/"
           "/home/vindarel/bacasable/lisp-projects/fossil-test/"
           "/home/vindarel/bacasable/lisp-projects/mito-admin/"
           "/home/vindarel/dotfiles/lem/")
   :INDEX 7
   :EDIT-STRING NIL
   :LIMIT NIL)
```

It is a struct (`#S`) with metadata as slots (pathname, index, limit…)
and the data, as an array (which has a fill-pointer and is adjustable,
but that's an implementation detail).

This is how you can add data to your history file. We use
`lem/common/history:add-history hitsory input :allow-duplicates nil`
followed by `save-file history`.

The `add-history` function also has the `:move-to-top` key parameter:
if T, it moves the input on top of the stack if it already exists.

```lisp
;; lem/common/history.lisp
add-history (history input &key (allow-duplicates t) (test #'equal) move-to-top)
  "Add this INPUT to the HISTORY.

  Doesn't add the same INPUT as the previous one.
  If ALLOW-DUPLICATES is non T, don't add duplicates at all.
  If LIMIT is set, overwrite oldest entry when reached.
  If MOVE-TO-TOP is T, move the entry to the top of the stack if it already exists."
```

```lisp
(defun remember-project (input)
  "Add this project path to the history file."
  (let* ((history (history))
         ;; Project roots (pathnames) are converted to strings for the
         ;; string completion prompt.
         (input (namestring input)))
    (if (and (lem/common/history:add-history history input :allow-duplicates nil)
             (lem/common/history:save-file history))
        (message "Saved project: ~A" input)
        (message "Failed saving project: ~A" input))))
```

We can get the history data, as a list, to work for the completion commands:

```lisp
(defun saved-projects ()
  "Return the saved projects.
  Return: a list (of strings), not a vector."
  (lem/common/history:history-data-list (history)))
```

Finally, this is how we use the history data for the interactive
`project-switch` command.

`prompt-for-string` is a built-in Lem function that builds the
completion window. We can feed it the completion candidates, that we
pulled from our persisted history.


```lisp
(defun prompt-for-project ()
  "Prompt for a project saved in the projects history."
  (let ((candidates (saved-projects)))
    (if candidates
        (prompt-for-string
         "Project: "
         :completion-function (lambda (x) (completion-strings x candidates))
         :test-function (lambda (name) (member name candidates :test #'string=)))
        (editor-error "No projects."))))

(define-command project-switch () ()
  "Prompt for a saved project and find a file in this project."
  ;; Get a project, with our history:
  (let ((project-root (prompt-for-project)))
    ;; The code below has nothing to do with the history, it's just file completion.
    (when project-root
      (uiop:with-current-directory (project-root)
        (let ((filename (prompt-for-files-recursively)))
          (alexandria:when-let (buffer (execute-find-file *find-file-executor*
                                                          (lem-core/commands/file::get-file-mode filename)
                                                          filename))
            (when buffer
              (switch-to-buffer buffer t nil))))))))
```

and voilà. You used the `lem/common/history` primitives to persist
data, and used it for command completion.


## Formatting code

Lem uses external code formatters that can be run automatically when you save a file.

Currently formatters available by default are:

- `gofmt` for go-mode
- `clang-format` for c-mode
- `prettier` for js-mode and json-mode
- and it works for lisp code of course.

Additionally, rust-mode uses `rustfmt`.

To use formatting, you can either manually invoke
`M-x format-current-buffer`, or enable auto-formatting like this:

```lisp
(setf lem:*auto-format* t)
```

Formatters can be defined for major modes,
they are implemented as a function that accepts a buffer as an argument.
Some are built-in, but you can make your own in two ways:

1. `register-formatter`

You can register a formatter for an existing major mode like this:

```lisp
(lem:register-formatter my-mode #'my-formatter)
```

2. `define-major-mode`

If you are creating your own major mode,
you can add a formatter in the mode definition:

```lisp
(define-major-mode my-mode ()
    (:name "My mode"
     :keymap *my-mode-keymap*
     :formatter #'my-formatter)
  )
```

## Hooks

Hooks allow you to run abritrary code before (or after) a command is called or a
given mode is entered (or exited).

Some examples:

- `after-save-hook`
- `kill-buffer-hook`
- `*find-file-hook*`
- `*exit-editor-hook*`
- `*after-init-hook*`
- [self-insert-hook](https://github.com/lem-project/lem/blob/main/extensions/lisp-mode/self-insert-hook.lisp): run code before or after a character is inserted in the buffer.
- and more: checkout each mode (programming modes, vi mode…) inside Lem with the completion.

The hooks mechanism is defined in `src/common/hooks.lisp`. It is made of the available functions and macros:

- `add-hook place callback`: add a hook
  - example: `(add-hook *after-init-hook* #'display-welcome)`

- `remove-hook place callback`: remove a hook

- `run-hooks list`: run all hooks.

Each mode defines a hook variable name. For example:

```lisp
(define-major-mode c-mode language-mode
    (:name "C"
     :keymap *c-mode-keymap*
     :syntax-table *c-syntax-table*
     :mode-hook *c-mode-hook*       ;; <---------- defines our hook name
     :formatter #'lem-c-mode/format:clang-format)
  (setf (variable-value 'enable-syntax-highlight) t)
  ;; more settings here…
  )

(add-hook *c-mode-hook* 'guess-offset)  ;; <------ adds a hook
```

## Vi mode

Start Lem in vi-mode:

```lisp
;; Start in vi-mode
(lem-vi-mode:vi-mode)
```

We can use a hook to be in vi insert mode when we start the Lisp REPL:

~~~lisp
;; Start the Lisp REPL in vi insert mode.
(add-hook lem-lisp-mode:*lisp-repl-mode-hook* 'lem-vi-mode/commands:vi-insert)
~~~



## Site init

The site init configuration allows the user to arrange different libraries/files, the main two important directories
to organize the files are:
 - `*inits-directory-name*` (`"~/.lem/lisp"`):

      This directory is intended to have libraries (asdf packages) that are going to be loaded
      before our configuration files.

 - `"~/.lem/inits"`:

      Here is the place we can put our configuration files (which are .lisp files not asdf systems).

It's usually recommended to make sure that the files are specify in the .asd file that is created at the root of
the `(lem-home)` directory, usually `"~/.lem"`, the file is `lem-site-init.asd`, an example maybe:

~~~lisp
;; don't edit !!! (you can ignore this warning)
(asdf/parse-defsystem:defsystem "lem-site-init"
  :depends-on
  (:system-on-lisp-directory)
  :components
  ((:file "inits/my-file-one") (:file "inits/my-file-two")))
~~~

Then, in the main init file `"init.lisp"`, you can load the systems + files with the function:
~~~lisp
(lem-core:load-site-init)
~~~

## Example users' init files

For inspiration, see those configuration files:

- [@fukamachi](https://github.com/fukamachi/.lem/)
- [@sasanidas](https://codeberg.org/sasanidas/lem-config/)
- [@vindarel](https://github.com/vindarel/lem-init)
- [@Gavinok](https://github.com/Gavinok/.lem)
- [@garlic0x1](https://github.com/garlic0x1/.lem)
- [@sakurawald](https://github.com/sakurawald/.dotfiles/blob/master/lem/.lem/init.lisp)  Heavily rely on the `vi-mode`.
- https://gist.github.com/jason-chandler/6332e3fd753fa87e3b1cd13582df5862 getting cxxxr/valtan to work along with paredit and the monokai theme
