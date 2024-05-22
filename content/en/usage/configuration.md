---
title: Configuration
weight: 5
---

Lem loads `~/.lem/init.lisp` when starting up.

You probably want to start it with

    (in-package :lem-user)

Otherwise, be sure to refer to Lem functions with the `lem:` prefix.

{{< toc >}}

## Choosing the completion pop-up position: center, top, bottom

Lem's completion pop-up, for example the one that shows on `M-x`, is
by default centered on the middle of the screen.

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
(define-keys *global-keymap*
  ("C-a b" 'describe-bindings)
  ("C-a k" 'describe-key)
  ("C-a a" 'lem-lisp-mode:lisp-apropos)
  ("C-a c" 'apropos-command)
  ("C-a p" 'lem-lisp-mode:lisp-apropos-package)
  ("C-a f" 'lem-lisp-mode:lisp-describe-symbol))
~~~

But wait, there is more.

### Defining a keymap

Did you notice that all the above commands have
the `C-a` prefix? We can refactor this.

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
argument. We use "p" and `n` is the argument name to use in the
command body. `n` defaults to 1.

~~~lisp
(define-command hellos (n) ("p")
  (dotimes (i n)
    (insert-string (current-point) "hello ")))
~~~

Call this command `M-x hellos` and it writes 1 "hello".

Call it with `C-u 3 M-x hellos` and it writes "hello" 3 times.


#### Optional arguments and default values

We can also use `(&optional n) ("P")` or `(&optional (n 3)) ("P")` to
change the default value.

"P" is similar to "p" but doesn't default to 1.

#### Ask for a number

Use "n". This prompts the user for a number.


#### Ask for a string

Use "s" for the arg-descriptor, and "sMy prompt: " to give a custom prompt.

This is how a directory-mode is done:

~~~lisp
(define-command simple-message (s) ("sEnter a string: ")
  (message s))
~~~

Run it with `M-x simple-message`.

#### Ask for a buffer

Use "b". It defaults to the current buffer's name.

There is also "B" that defaults to the other buffer's name.

#### Ask for a file

Use "f" to prompt for a file. It defaults to the current buffer's directory.

There is also "F" that defaults to the buffer's directory and must not be existing.


#### Run on region

Next, how can we run a command on a region? A region is defined with a
start and end point. We have to tell the command it operates on a
region, that way it gives us the two points.

We do so by declaring two `start` and `end` arguments, and a special
argument descriptor: "r". Here's how it is done for the `python-eval-region` command:


~~~lisp
(define-command python-eval-region (start end) ("r")
  (unless (alive-process-p)
    (editor-error "Python process doesn't exist."))
  (lem-process:process-send-input *process* (points-to-string start end)))
~~~

#### Multiple arguments

We can have multiple arguments, for example:

```lisp
(define-command multiple-args (regex &optional arg) ("sEnter a regex:" "P")
  ...)
```


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


## Example users' init files

For inspiration, see those configuration files:

- [@fukamachi](https://github.com/fukamachi/.lem/)
- [@sasanidas](https://codeberg.org/sasanidas/lem-config/)
- [@vindarel](https://github.com/vindarel/lem-init)
- [@Gavinok](https://github.com/Gavinok/.lem)
- [@garlic0x1](https://github.com/garlic0x1/.lem)
- https://gist.github.com/jason-chandler/6332e3fd753fa87e3b1cd13582df5862 getting cxxxr/valtan to work along with paredit and the monokai theme
