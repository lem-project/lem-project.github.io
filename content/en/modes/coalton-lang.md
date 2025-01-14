---
title: Coalton Lang
---

NEW as of January, 2025.

[Coalton](https://coalton-lang.github.io/) is

> an efficient, statically typed functional programming language that supercharges Common Lisp.

Lem's Coalton mode provides:

- support for `.coal` files
- support for Coalton code inside `coalton-toplevel` in lisp-mode
- code highlighting
- indentation support
- show autodoc for Coalton functions
-  its arguments can be different from definitions since the information is from Swank, just like Common Lisp
- compilation commands: `coalton-compile-defun` (on the usual `C-c C-c`) and `M-x coalton-compile-region`.


`coalton-mode` is enabled as a sub-mode inside the `coalton-toplevel`
form in lisp-mode: that means that in the following file, the type
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
