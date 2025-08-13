---
title: Markdown mode
---

Lem's markdown mode supports:

- syntax highlihgting
- live preview in a browser
- evaluation of code blocks and insertion of results
- multiple major modes into a single markdown buffer.

## Default keybindings

- `C-c C-l`: `markdown-insert-link`.
  - you can select a text, and the command will add a link around it.
  - with `C-u`, ask for a title / tooltip.

## Live preview

Use `M-x markdown-preview`. This command renders the markdown of the
current buffer to a browser window. The preview is refreshed when the
file is saved.

The preview connection is stopped when the file is closed.

Note that this command currently processes Markdown, not CommonMark.

> New as of May 28th, 2024

<img class="" src="/markdown-preview.gif" alt="Markdown preview in a browser window">

## Syntax highlighting of code blocks in markdown-mode

When you start a code block with three backticks and a programming
language name, the code block will be highlighted for this
language. You don't have to activate anything.


## Language-specific features per code block

When you write code in a code block, you can use the programming
language mode's usual keybindings, such as `C-c C-c` for Lisp. It will
work as if you were in a file for this language with its major mode
activated.

<img class="" src="/mmm.gif" alt="Writing code blocks in markdown code blocks is done with syntax highlighting and access to the mode's commands. Here we compile a Lisp function.">

A known issue is that the `execute` method is not called.

## Interactive evaluation of code blocks

> New as of August, 2025.

Lem got interactive features to markdown source code blocks. It works
by default for:

- lisp
- bash

The idea is that you can run the code blocks, and do something with
them: display them in a pop-up windowd, print them on file below the
code block, eval the code but ignore the results…

The API consists of these commands:

- `markdown-eval-block` (C-c c-e): evaluate the current markdown code block and display the results in a pop-up (just like `lisp-macroexpand`).
- `markdown-eval-block-and-insert` (C-c C-c): Evaluate the current markdown code block and insert its result below the block.
- `markdown-eval-block-nop` (C-c C-r): evaluate the current markdown code block and do nothing with the result.
- `markdown-kill-block-result` (C-c C-d):  deletes the result block below the code block your cursor is in. This is run automatically before `markdown-eval-block-and-insert`.

For example:

<pre>
<code>
```bash
echo "hello"
```
</code>
</pre>

When the cursor is in the code block, press `C-c C-c` to insert the results:

<pre>
<code>
```bash
echo "hello"
```

```result
hello

```
</code>
</pre>


If you try to evaluate a block and there is no registered evaluator, a message is displayed saying so.  If you use any of these commands outside a code block, nothing happens.  If you use these commands while not in markdown-mode, a warning is displayed.

Evaluation commands work asynchronously and you can do whatever you want while it is working.

Here is a demo:

[Screencast from 2024-02-17 14-15-46.webm](https://github.com/lem-project/lem/assets/43155857/63621806-b594-42b6-842e-788ca5e36203)


### Extending language support for markdown eval

The macro `register-block-evaluator` is for users to add support for
other languages.

For example, this is how the bash support was added:

```lisp
(register-block-evaluator "bash" (string callback)
  "Register evaluator for Bash blocks."
  (bt:make-thread
   (lambda ()
     (funcall callback (uiop:run-program string :output :string)))))
```

and the evaluator for lisp:

```lisp
(register-block-evaluator "lisp" (string callback)
  "Register evaluator for Lisp blocks."
  (lem-lisp-mode:check-connection)
  (lem-lisp-mode:lisp-eval-async
   (read-from-string (format nil "(progn ~a)" string))
   callback))
```
