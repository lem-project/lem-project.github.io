---
title: Configuration
weight: 5
---

## Configuration

Lem loads `~/.lem/init.lisp` when starting up.

You probably want to start it with

    (in-package :lem-user)

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

## Example users' init files

For inspiration, see those configuration files:

- [@fukamachi](https://github.com/fukamachi/.lem/)
- [@sasanidas](https://codeberg.org/sasanidas/lem-config/)
- [@vindarel](https://github.com/vindarel/lem-init)
- [@Gavinok](https://github.com/Gavinok/.lem)
- [@garlic0x1](https://github.com/garlic0x1/.lem)
- https://gist.github.com/jason-chandler/6332e3fd753fa87e3b1cd13582df5862 getting cxxxr/valtan to work along with paredit and the monokai theme
