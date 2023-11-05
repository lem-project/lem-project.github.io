---
title: Windows
weight: -20
---

[Lem 2.1 was released](https://github.com/lem-project/lem/releases/tag/v2.1.0)! It provides binaries for Linux, MacOS and Windows.


#### Keyboard Layout

If your keyboard is a JIS layout, you need to put the following settings in `$HOME/.lem/init.lisp`

```common-lisp
#+lem-sdl2
(lem-sdl2:set-keyboard-layout :jis)
```
