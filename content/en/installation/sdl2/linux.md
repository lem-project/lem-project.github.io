---
title: GNU/Linux
weight: -20
---

## Using the binary

[Lem 2.1 was released](https://github.com/lem-project/lem/releases/tag/v2.1.0)! It provides binaries for Linux, MacOS and Windows.

## Other GNU/Linux

### Installation from scratch
- [sbcl](https://www.sbcl.org/)
- [sdl2](https://www.libsdl.org/)
- [qlot](https://github.com/fukamachi/qlot)
- [git](https://git-scm.com/)


#### Install SBCL and ncurses library
- Debian-like distro
```
sudo apt install sbcl build-essential libsdl2-dev libsdl2-image-dev libsdl2-ttf-dev
```

#### Install qlot
- Automatic installer
```
curl -L https://qlot.tech/installer | bash
```
For an alternative installation, https://github.com/fukamachi/qlot#installation


#### Download and build the executable

- Create the directories

```
mkdir $HOME/common-lisp
cd $HOME/common-lisp
git clone https://github.com/lem-project/lem.git
cd lem && make sdl2
```

or run `make sdl2-ncurses` to build Lem with the two interfaces in it. Then choose the interface at startup with `--ncurses` or `--sdl2` (aka `--nogui` and `--gui`).


#### Add the executable to PATH
- Copying the PATH to `~/.bashrc`
```
export PATH="$HOME/common-lisp/lem:$PATH"
```
