---
title: Rust
---

Lem supports Rust with syntax highlighting, `rustfmt`, auto indentation

At the time of writing, Lem doesn't support LSP for Rust. Someone needs to add it!

## Keybindings

```lisp
(define-key *rust-mode-keymap* "C-c C-f" 'rust-format-buffer)
(define-key *rust-mode-keymap* "M-C-q" 'indent-exp)
```
