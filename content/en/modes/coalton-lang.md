---
title: Coalton Lang
---

NEW as of January, 2025.

[Coalton](https://coalton-lang.github.io/) is

> an efficient, statically typed functional programming language that supercharges Common Lisp.

Lem's Coalton mode provides:

- support for `.coal` files
- support for Coalton code inside `coalton-toplevel` in lisp-mode
- code completion
- syntax highlighting
- indentation
- showing autodoc for Coalton functions
- compilation commands: `coalton-compile-defun` (on the usual `C-c C-c`) and `M-x coalton-compile-region`.


`coalton-mode` being enabled as a sub-mode inside the `coalton-toplevel`
form in lisp-mode means that in the following file, the type
`Integer` is highlighted even in lisp-mode:

~~~lisp
;; Just for testing: test.lisp
(defpackage foo
  (:use :coalton-prelude))
(in-package :foo)

(coalton-toplevel
  (declare foo (Integer -> Integer))
  ...
  )
~~~
