---
title: Nix mode
---

Lem has a built-in Nix mode.

It does syntax highlighting and automatic indentation.

Since December, 2025, Nix mode got tree-sitter support and enhanced,
context-aware indentation.

It has declarative indentation support using tree-sitter indent
queries (indents.scm) with Helix-style `@indent/@outdent` captures.

Nix mode's LSP, based on `oxalica/nil`, is disabled by default. You
can find its default configuration in
[extensions/nix-mode/lsp-config.lisp](https://github.com/lem-project/lem/blob/main/extensions/nix-mode/lsp-config.lisp).

You can find nix-mode in [extensions/nix-mode/nix-mode.lisp](https://github.com/lem-project/lem/blob/main/extensions/nix-mode/nix-mode.lisp).
