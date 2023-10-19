---
title: Installation
weight: -20
---

[Lem 2.1 was released](https://github.com/lem-project/lem/releases/tag/v2.1.0)! It provides binaries for Linux, MacOS and Windows.

You can also build it yourself and Arch users can get it with AUR.

## Requirement
- [sbcl](https://www.sbcl.org/)
- ncurses

## Platform
- Linux
- MacOS
- [Windows](https://github.com/lem-project/lem/wiki/Windows-Platform)

## ArchLinux

Arch users have a AUR package: https://aur.archlinux.org/packages/lem-editor-git

## Installation with roswell

Please install roswell at first [Roswell Installation Guide](https://github.com/roswell/roswell/wiki/Installation).

After that, please follow the steps bellow.

1. Install lem by roswell

```
$ ros follow-dependency=t install lem-project/lem

```

2. Add the PATH in the initialization file(such as ~/.bashrc)
```
export PATH=$PATH:~/.roswell/bin
```

### Updating

```
$ ros update lem
```

### Usage

```
$ lem <filename.lisp>
```

You can watch the screencast on Youtube.

[Screencast](https://youtu.be/YkSJ3p7Z9H0)

## Installation with sbcl

Please clone lem to a location where the path to [asdf](https://asdf.common-lisp.dev/) is accessible,
it is also recommended to install [quicklisp](https://www.quicklisp.org/beta/).

You can put the files in `$HOME/common-lisp` or in the quicklisp location `$HOME/quicklisp/local-projects`
```
$ mkdir $HOME/common-lisp
$ cd $HOME/common-lisp
$ git clone --recursive https://github.com/lem-project/lem.git
$ git clone --recursive https://github.com/lem-project/micros
$ git clone --recursive https://github.com/lukpank/lem-base16-themes
$ git clone --recursive https://github.com/lem-project/lem-mailbox
```
You can start "lem" using the following command.
```
$ sbcl
* (ql:quickload :lem-ncurses)
* (lem:lem)
```

## Build an executable

### With make

If you have [make](https://www.gnu.org/software/make) installed, you have available these commands:

1. Build ncurses executable
```
make build-ncurses
```

2. Build sdl2 executable
```
make build-sdl2
```

### Without make

You can create the executable file of lem using the following command.
```
$ sbcl --eval '(ql:quickload :lem-ncurses)' --load scripts/patch-build-ncurses.lisp
```

# If the installation fails
Please refer to the following issue
https://github.com/lem-project/lem/issues/628
