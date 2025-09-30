---
title: Lem SDL2
weight: -20
geekdocCollapseSection: true
---

> **Note:** the SDL2 UI is deprecated in favor of the Webview one. It won't receive updates.


## Using the binary

[Lem has nightly releases](https://github.com/lem-project/lem/releases) (Linux AppImages, MacOS and Windows binaries), but not for the SDL2 GUI.


## Installation from scratch

Dependencies:

- [sbcl](https://www.sbcl.org/)
- [sdl2](https://www.libsdl.org/)
- [qlot](https://github.com/fukamachi/qlot)
- [git](https://git-scm.com/)

### Install SBCL and SDL2 libraries

- Debian-like distro

```
sudo apt install sbcl build-essential libsdl2-dev libsdl2-image-dev libsdl2-ttf-dev fd-find
```

- Fedora-like distro

```
sudo dnf install sbcl SDL2-devel SDL2_image-devel SDL2_ttf-devel fd-find
sudo dnf group install c-development development-tools
```

### Install qlot

- Automatic installer

```
curl -L https://qlot.tech/installer | bash
```

> **Note:** For an alternative installation, see https://github.com/fukamachi/qlot#installation

### Download and install

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

## MacOS

### How to Fix “App Is Damaged and Can’t Be Opened” on OSX
Copy the app file to the applications folder and type the following in your terminal:
```
xattr -d com.apple.quarantine /Applications/lem.app
```
### Make it an Application

To create an executable that you can run as a GUI you will need to use Automator.

- Launch Automator
- Choose 'Application' as the type for your document

You should now see three columns. In the second column there will be a collection of actions
that you can run in this 'application'. Scroll down until you see `Run Shell Script`. Double click
on this and on the right you should now see a text box where you can enter your script:

Replace the contents of this shell script with the following:

```zsh
source ~/.zshrc
cd ~/common-lisp/lem
./lem -i sdl2 &
exit 0
```

Save this as an application (this should be the default) with the name `Lem` to `\Applications`.

You should now be abel to run this as an application from the Applications folder.

## Japanese Industrial Standard keyboard layout

If your keyboard is a JIS layout, you need to put the following settings in `$HOME/.lem/init.lisp`

```common-lisp
#+lem-sdl2
(lem-sdl2:set-keyboard-layout :jis)
```
