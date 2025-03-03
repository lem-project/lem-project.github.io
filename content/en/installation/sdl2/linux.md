---
title: GNU/Linux
weight: -20
---

## Using the binary

[Lem 2.1 was released](https://github.com/lem-project/lem/releases/tag/v2.1.0)! It provides binaries for Linux, MacOS and Windows.

## Other GNU/Linux

### Installation from scratch

Dependencies:

- [sbcl](https://www.sbcl.org/)
- [sdl2](https://www.libsdl.org/)
- [qlot](https://github.com/fukamachi/qlot)
- [git](https://git-scm.com/)

#### Install SBCL and SDL2 libraries

- Debian-like distro

```
sudo apt install sbcl build-essential libsdl2-dev libsdl2-image-dev libsdl2-ttf-dev fd-find
```

- Fedora-like distro

```
sudo dnf install sbcl SDL2-devel SDL2_image-devel SDL2_ttf-devel fd-find
sudo dnf group install c-development development-tools
```

#### Install qlot

- Automatic installer

```
curl -L https://qlot.tech/installer | bash
```

> **Note:** For an alternative installation, see https://github.com/fukamachi/qlot#installation

#### Download and install

There are two ways to install Lem:

**1. Local installation:**

```
mkdir $HOME/common-lisp
cd $HOME/common-lisp
git clone https://github.com/lem-project/lem.git
cd lem && make sdl2
```

> **Note:** You can also run `make sdl2-ncurses` to build Lem with both the SDL2 and ncurses interfaces. You can then choose the interface at startup with `-i / --interface`, either "sdl2" or "ncurses".

Then add the executable to your PATH by adding this line to your `~/.bashrc`:

```
export PATH="$HOME/common-lisp/lem:$PATH"
```

**2. System-wide installation:**

```
git clone https://github.com/lem-project/lem.git
cd lem
```

First ensure qlot is installed for the root user:
```
sudo bash -c "curl -L https://qlot.tech/installer | bash"
```

Then install Lem:
```
sudo make install
```

This will:

- Build Lem with both SDL2 and ncurses interfaces
- Install the executable system-wide 
- Add a desktop entry file with relevant file associations
- Configure SDL2 as the default interface

You can still switch between interfaces using the `-i / --interface` option when launching Lem.
