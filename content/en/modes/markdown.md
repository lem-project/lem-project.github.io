---
title: Markdown mode
---

Lem's markdown mode supports syntax highlihgting, live preview in a
browser and the following additional features, that bend multiple
major modes into a single markdown buffer.

## Default keybindings

- `C-c C-l`: `markdown-insert-link`.

## Live preview

Use `M-x markdown-preview`. This command renders the markdown of the
current buffer to a browser window. The preview is refreshed when the
file is saved.

The preview connection is stopped when the file is closed.

Note that this command currently processes Markdown, not CommonMark.

> New as of May 28th, 2024

<img class="" src="/markdown-preview.gif" alt="Markdown preview in a browser window">

## Syntax highlighting of code block in markdown-mode

When you start a code block with three backticks and a programming
language name, the code block will be highlighted for this
language. You don't have to activate anything.

> This feature is available since May 25th, 2024.


## Language-specific features per code block

When you write code in a code block, you can use the programming
language mode's usual keybindings, such as `C-c C-c` for Lisp. It will
work as if you were in a file for this language with its major mode
activated.

> New as of May 28th, 2024

<img class="" src="/mmm.gif" alt="Writing code blocks in markdown code blocks is done with syntax highlighting and access to the mode's commands. Here we compile a Lisp function.">

A known issue is that the `execute` method is not called.

## Brewing features

- interactive evaluation of code blocks is a work in progress ([#1304](https://github.com/lem-project/lem/pull/1304)).
