---
title: Configuration
weight: 5
---

## Configuration

Lem loads `~/.lem/init.lisp` when starting up.

You probably want to start it with

    (in-package :lem-user)

Otherwise, be sure to refer to Lem functions with the `lem:` prefix.

## Binding keys

### `define-key`

Use the `define-key` function:

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


## Example users' init files

For inspiration, see those configuration files:

- [@fukamachi](https://github.com/fukamachi/.lem/)
- [@sasanidas](https://codeberg.org/sasanidas/lem-config/)
- [@vindarel](https://github.com/vindarel/lem-init)
- [@Gavinok](https://github.com/Gavinok/.lem)
- [@garlic0x1](https://github.com/garlic0x1/.lem)
- https://gist.github.com/jason-chandler/6332e3fd753fa87e3b1cd13582df5862 getting cxxxr/valtan to work along with paredit and the monokai theme
