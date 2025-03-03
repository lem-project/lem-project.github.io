---
title: Additional and optional programs
weight: 100
---

This is a list of optional programs that we advise to install along of Lem:

```
fd
```

- [fd](https://github.com/sharkdp/fd) or `fdfind` from Debian repositories: if present, Lem will use it in commands that find files recursively (see Usage: Opening Files). `fd` respects .gitignore by default and ignores common large development directories such as `node_modules/`. If it isn't present, Lem will fallback to a full Lisp solution.
