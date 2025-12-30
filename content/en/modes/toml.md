---
title: TOML
---

`toml-mode` is a major mode for editing TOML configuration files.

It features:

- Syntax highlighting via tree-sitter with TextMate fallback
  - full coverage of TOML v1.0.0 syntax elements.
- Automatic mode activation for `.toml` files (e.g., Cargo.toml, pyproject.toml)
- Line comment support using `#` character
- Consistent visual appearance with yaml-mode and json-mode


### Usage

```lisp
;; Load the mode
(ql:quickload :lem-toml-mode)

;; Mode activates automatically for .toml files
;; Or manually: M-x toml-mode
```

## AI Usage Disclosure

Did you use LLMs/AI tools for [this PR](https://github.com/lem-project/lem/pull/2065)?

- [ ] No, this is 100% human-authored.
- [ ] Yes, AI-assisted (Human-led logic, AI-assisted implementation).
- [x] Yes, AI-generated (Logic primarily derived from prompt/vibe).

Tooling Used: Claude Code (Claude Opus 4.5)
