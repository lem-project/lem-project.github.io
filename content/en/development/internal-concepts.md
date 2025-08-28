---
title: Lem's internal concepts
weight: 1
---

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
