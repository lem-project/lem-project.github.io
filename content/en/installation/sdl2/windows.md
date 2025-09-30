---
title: Windows
weight: -20
---


[Lem has nightly AppImage releases](https://github.com/lem-project/lem/releases)! for Linux, MacOS and Windows.

> **Note:** the SDL2 UI is deprecated in favor of the Webview one. It won't receive updates.

#### Keyboard Layout

If your keyboard is a JIS layout, you need to put the following settings in `$HOME/.lem/init.lisp`

```common-lisp
#+lem-sdl2
(lem-sdl2:set-keyboard-layout :jis)
```
