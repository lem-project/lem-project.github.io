---
title: Internal concepts
weight: 1
---

{{< toc >}}


## Buffers

A buffer contains text to display on screen, and might be associated
to a file, but might not be.

Buffers are regular CLOS objects with many slots:

```
name
temporary (boolean)
filename
directory
read-only-p
major-mode
minor-modes
point
last-write-date
…
```

A `text-buffer` is a class and type for text buffers.

The variable `*current-buffer*` holds the current buffer, the one we
are visiting in Lem. There will always be at least one buffer, even if
it is the primordial one named `*tmp*`.

We don't directly access a buffer's slots, but we use small wrapper functions, such as:

```lisp
buffer-name
buffer-filename
buffer-directory
…
```

They are `setf`-able, and work by default on the current-buffer.

Other manipulation functions include:

```lisp
(current-buffer)
(ensure-buffer)
(get-buffer)
;; If 'buffer-or-name' is a buffer, it is returned. If it is a string, it returns the buffer with that name.
```

See:

- [`src/buffer/internal/buffer.lisp`](https://github.com/lem-project/lem/blob/main/src/buffer/internal/buffer.lisp)

### Manipulating buffers

See:

```lisp
(buffer-list)
(delete-buffer)
(get-next-buffer)
(get-previous-buffer)
(defun get-file-buffer (filename)
;;  "Return the buffer corresponding to 'filename' or NIL if not found."
etc
```


### Buffer variables

A buffer object might hold any other data in its `variables` slot (to
get with `buffer-variables`), a hash-table that associates a variable
key to its values.

The function `buffer-value buffer name &optional default` is used to
access these variables. It is `setf`-able.

### Attached buffers

This feature attaches “attached-window” to the bottom of a specific
window. An "attached-window" has an "attached-buffer".  When you attach an
attached-window to a specific window, that window becomes the parent
window from the perspective of the attached-window.  The attached
window remains visible even when the parent window is scrolled.

It's like a comment input form on slack or discord.

They were initially added for the Claude Code integration.

<img class="" src="/lem-attach-buffer.png" alt="Lem's attached buffers concept.">


## Moving the point

The point is the cursor's location.

<!-- TODO: add internal/point.lisp package documentation about points and their :kind types -->

You may use these functions:

```
(current-point)
(copy-point)
(point=) ;; and other comparison functions
(point-max)
(move-point point new-point)
```

The macro `(save-excursion …)` will run its body and preserve the
point position from before the macro was called.

```lisp
(save-excursion
   (move-point (current-point) point)
   (prompt-for-string
    "Say hi: "))
```

See:

- [`src/buffer/internal/point.lisp`](https://github.com/lem-project/lem/blob/main/src/buffer/internal/point.lisp)

### Create (and delete) points

Each created point creates an object in memory. After being used, a
point should be discarded. You can use `make-point` and
`delete-point`, or use the macro `with-point`.

~~~lisp
(with-point ((p3 expr1)
             (p1 expr2 :left-inserting)
             (p2 expr3 :right-inserting))
  ...)
~~~


## Prompts

Prompts are these interactive pop-up windows that allow you to search
and TAB-complete commands, files, etc.

Some prompt functions are already defined for a diversity of use-cases:

```
prompt-for-y-or-n-p
prompt-for-string
prompt-for-integer
prompt-for-buffer
prompt-for-file
prompt-for-directory
prompt-for-command
prompt-for-library
prompt-for-encodings
```

Each may define a prompt string, an initial value, a completion
function, a `:test-function` (as in the Lisp built-ins `:test` key
parameter), and a history-symbol

Their signature are usually:

```lsp
(prompt-for-string string
                           :initial-value string
                           :history-symbol '*symbol*
                           :completion-function #'function
                           :test-function #'function)
```

See:

- [`src/prompt.lisp`](https://github.com/lem-project/lem/blob/main/src/prompt.lisp)


### Example: prompt for strings

This is enough to prompt for a string:

```lisp
(prompt-for-string "New string: ")
```

A use in the wild might look like:

```lisp
(prompt-for-string (or prompt "Branch: ")
                           :initial-value current-branch
                           :history-symbol '*legit-branches-history*
                           :completion-function (lambda (x) (completion-strings x candidates))
                           :test-function (lambda (name) (member name candidates :test #'string=)))
```

### Inline prompts

We may use prompts that open at the current point, on the current
line, and have no borders: they are not a pop-up window.

![](/lem-inline-prompt.png "Lem's inline prompts are not pop-up windows.")

```lisp
;; in directory-mode
(defun prompt-for-rename-file (point)
  "Open an inlined prompt at point to rename the file."
  (let ((file (current-file point)))
    (save-excursion
      (move-point (current-point) point)
      (prompt-for-string
       "New name: "
       :initial-value (if file (file-namestring file) "")
       :test-function (lambda (string)
                        (not (alexandria:emptyp string)))
       :gravity :cursor
       :use-border nil))))
```
