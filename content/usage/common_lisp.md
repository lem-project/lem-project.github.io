---
title: Common Lisp commands
weight: -10
---

Start a Lisp REPL with `M-x start-lisp-repl`.

To switch to the Lisp REPL: `C-c C-z`. You can use quick commands inside the REPL. They start with a `,` (coma).

To compile and load a buffer: `C-c C-k`. To compile a function: `C-c C-c`.

To evaluate some Lisp code: `M-:`.

Lem features an advanced interactive debugger. You can navigate and
inspect the stacktraces (`C-n`, `C-p`), go to the error's origin (`v`
on the backtrace), restart a given point of the backtrace (`r`,
`sldb-restart-frame`), and so on. Quit the debugger with `q`, or use a
suggested restart (by entering its number, pressing Enter on it, or
clicking on it).
