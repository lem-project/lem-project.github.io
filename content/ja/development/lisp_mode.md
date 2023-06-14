---
title: Lisp mode
weight: -10
---

In lem, lisp-mode provides slime, just as it is by default in emacs and other editors.

SLIME uses a client-server model, where the editor (client) and the Common Lisp runtime (server) interact to realize the functions necessary for Common Lisp development.

In emacs, vim, etc., the slime implementation is such that the client side is the editor process, and the server side is the Common Lisp process. This is the same for lem, but in lem's case, since the editor is Common Lisp, it is possible to operate the server and client in the same process. Therefore, it is possible to develop lem itself using the features of slime.

In lem, when lisp-mode starts, if it can connect to the server, the server automatically starts within the lem process, the connection is made, and slime starts.

The key bindings are similar to emacs' slime. A slight difference is that whether the server process is launched by lem itself or by another process is distinguished, so the commands are separated. The command name with the 'self' prefix is the mark of this.

## Keybind
`C-M-q (lisp-indent-sexp)`  
This indents the expression at the current cursor position.

`C-c M-p (lisp-set-package)`  
This changes the current package. This only makes sense in repl. In a file, the package name is determined automatically from the in-package expression, so changing it will overwrite it.

`C-c M-: (lisp-eval-string)`  
This evaluates the expression entered in the minibuffer.

`M-: (self-lisp-eval-string)`  
This evaluates the expression entered in the minibuffer in the current process.

`C-c C-e (lisp-eval-last-expression)`  
This evaluates the expression before the cursor position.

`C-x C-e (self-lisp-eval-last-expression)`  
This evaluates the expression before the cursor position in the current process.

`C-M-x (lisp-eval-defun)`  
This evaluates the top-level expression at the cursor position.

`C-c C-r (lisp-eval-region)`  
This evaluates the selected range.

`C-c C-l (lisp-load-file)`  
This loads a file. By default, it is the current file.

`C-c C-k (lisp-compile-and-load-file)`  
This compiles and loads the current file.

`C-c C-c (lisp-compile-defun)`  
This compiles the top-level expression at the cursor position.

`C-c M-c (lisp-remove-notes)`  
When you compile, a red line is attached to the warning points, and this command removes it. If you correct the expression and recompile, it will disappear, but you can also remove it with this command.

`C-c Return (lisp-macroexpand)`  
This displays the result of macroexpand-1 of the expression at the cursor position in a separate window.

`C-c M-m (lisp-macroexpand-all)`  
This displays the result of macroexpand-all of the expression at the cursor position in a separate window.

`C-c C-d C-a (lisp-autodoc-with-typeout)`  
This displays information about the function's arguments in a separate window.

`C-c C-d d (lisp-describe-symbol)`  
This displays the describe result of the symbol at the cursor position in a separate window.

`C-c C-z (lisp-switch-to-repl-buffer)`  
This switches to the repl window.

`C-c C-b (lisp-connection-list)`  
This displays a list of connected servers.

`C-c g (lisp-interrupt)`  
This interrupts the expression being executed in a separate thread.

`C-c C-q (lisp-quickload)`  
This runs ql:quickload with the current package name. It mainly assumes package-inferred-system.
