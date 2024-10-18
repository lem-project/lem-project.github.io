---
title: Copilot
weight: 20
---

Lem supports Copilot completions.

While editing a source file, Lem shows completions in an
overlay. Below it suggests a function body for factorial, and we see
Lem's function signature default help.

<a href="/copilot.png"> <img class="" src="/copilot.png" alt="Lem suggests GitHub Copilot completions in an overlay." style="max-width: 60%"> </a>

You might need to install the Copilot dependencies (see below).

## Login

To login, use `M-x copilot-signin`.

After logging in, open a source file and edit it. The completion will be performed.

## Browsing and accepting changes

Use `Tab` to accept a suggestion (`copilot-accept-suggestion`)

See the next suggestion with `M-n` (`copilot-next-suggestion`),

see the previous one with `M-p`.


## Other commands

`M-x copilot-install-server`: install the required npm `copilot-node-server` dependency.

`M-x copilot-restart`: restart the Copilot process.


## Configuration

Lem's Copilot mode uses the `*copilot-completion-keymap*` keymap to
define keys, inside the Lisp package `lem-copilot`.

You can change `copilot-suggestion-attribute` that defaults to "dark gray":

```lisp
(define-attribute copilot-suggestion-attribute
  (t :foreground "dark gray"))
```

You can find logs in the `copilot/` directory of your `(lem-home)`.
