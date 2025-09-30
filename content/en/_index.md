---
title: Lem is a general-purpose editor/IDE extensible in Common Lisp.
geekdocNav: false
geekdocAlign: center
geekdocAnchor: false
---

<!-- markdownlint-capture -->
<!-- markdownlint-disable MD033 -->


<img class="" src="/icon-blue.svg" alt="">

<span class="badge-placeholder">[![Build Status](https://github.com/lem-project/lem/workflows/CI/badge.svg)](https://github.com/lem-project/lem/actions)</span>
<span class="badge-placeholder">[![Backers on Open Collective](https://opencollective.com/lem/backers/badge.svg)](https://github.com/lem-project/lem#backers)</span>
<span class="badge-placeholder">[![Sponsors on Open Collective](https://opencollective.com/lem/sponsors/badge.svg)](https://github.com/lem-project/lem#sponsors)</span>

<!-- markdownlint-restore -->

Many languages are supported with Lem's **built-in LSP support**.

In addition, after installing lem, you can start developing in Common Lisp and extend the editor while it runs.

{{< button size="large" relref="installation/ncurses/" >}}Getting Started{{< /button >}}

## Feature overview

{{< columns >}}

### Keyboard oriented

<a href="/terminal.png"> <img class="" src="/lem-find-file-2025.png" alt=""> </a>

If you come from Emacs or Vim, you will feel right at home.

<--->

### Alien Technology

<img class="" src="/lisp_logo.png" alt="" style="height: 265px" >

It is an established fact that John McCarthy shared alien tech with the world in 1958 when he introduced us to Lisp. We continue that great tradition.

Lem is written and extensible in Common Lisp.

<--->

### GUI version with webview or SDL2

<a href="/sdl2.png"> <img class="" src="/sdl2.png" alt=""> </a>

Since version 2.0, a GUI version is also available.

It brings graphics and mouse support, as well as games and over 180
colour themes.

The webview will eventually replace the SDL2 version.

{{< /columns >}}

{{< columns >}}

### Ready for Common Lisp

<a href="/lem-lisp.png"> <img class="" src="/lem-lisp.png" alt=""> </a>

Start developing on Lisp at once.

Full-featured REPL and interactive debugger, with Paredit and a third-party Pareto (lispy-mode) mode.

<--->

### Project tree view

<a href="/filer.png"> <img class="" src="/filer.png" alt=""> </a>

Open a tree view of the current project,

use project-aware commands.

{{< /columns >}}

{{< columns >}}

### and more

<img class="" src="/tetris.png" alt="File tree on the left.">

Terminal integration, multiple cursors, interactive grep, directory mode, tabs, Git interface, keyboard macros,

and support for:

C, Scheme, Go, JavaScript, TypeScript, Python, Rust, Elixir, Haskell, Java, Nim, Dart, OCaml, Scala, Swift, Lua, Ruby, shell, asm

Markdown, ASCII, JSON, HTML and CSS, Vue, SQL…

{{< /columns >}}

{{< button size="large" relref="usage/usage/" >}}See the documentation{{< /button >}}
