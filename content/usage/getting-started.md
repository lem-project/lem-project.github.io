---
title: Installation
weight: -20
---
## Requirement
- [roswell](https://github.com/roswell/roswell)
- ncurses

## Platform
- Linux
- MacOS
- [Windows](https://github.com/lem-project/lem/wiki/Windows-Platform)

## Installation with roswell

Please install roswell at first.

[Roswell Installation Guide](https://github.com/roswell/roswell/wiki/Installation)

After that, please follow the steps bellow.

```
1. install lem by roswell
$ ros follow-dependency=t install lem-project/lem

2. add the PATH in the initialization file(such as ~/.bashrc)
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

Please clone lem to a location where the path to asdf is accessible.

```
$ mkdir $HOME/common-lisp
$ cd $HOME/common-lisp
$ git clone --recursive https://github.com/lem-project/lem.git
```

You can start "lem" using the following command.
```
$ sbcl
* (ql:quickload :lem-ncurses)
* (lem:lem)
```

You can create the executable file of lem using the following command.
```
$ sbcl --eval '(ql:quickload :lem-ncurses)' --load build.lisp
```


## Extensions and modes

## How to develop lisp
See https://github.com/lem-project/lem/wiki/Lisp-Mode

## How to hack on lem itself
See https://github.com/lem-project/lem/wiki/How-to-hack-on-lem-itself

If you have a questions, join [the Discord](https://discord.gg/NHzqbw4zVR).


# If the installation fails
Please refer to the following issue
https://github.com/lem-project/lem/issues/628
