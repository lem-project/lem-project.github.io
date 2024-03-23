---
title: MacOS
weight: -20
---
## Using the binary

[Lem 2.1 was released](https://github.com/lem-project/lem/releases/tag/v2.1.0)! It provides binaries for Linux, MacOS and Windows.


#### How to Fix “App Is Damaged and Can’t Be Opened” on OSX
Copy the app file to the applications folder and type the following in your terminal:
```
xattr -d com.apple.quarantine /Applications/lem.app
```

### Installation from scratch
- [sbcl](https://www.sbcl.org/)
- [sdl2](https://www.libsdl.org/)
- [qlot](https://github.com/fukamachi/qlot)
- [git](https://git-scm.com/)


### Install SBCL and ncurses
- Using HomeBrew https://brew.sh/

```
brew install sbcl sdl2 sdl2_image sdl2_ttf
```

### Install qlot
- Automatic installer
```
curl -L https://qlot.tech/installer | bash
```
For an alternative installation, https://github.com/fukamachi/qlot#installation


### Download and build the executable

- Create the directories

```
mkdir $HOME/common-lisp
cd $HOME/common-lisp
git clone https://github.com/lem-project/lem.git
cd lem && make sdl2
```

or run `make sdl2-ncurses` to build Lem with the two interfaces in it. Then choose the interface at startup with `--ncurses` or `--sdl2` (aka `--nogui` and `--gui`).

### Add the executable to PATH
- Copying the PATH to `~/.bashrc`
```
export PATH="$HOME/common-lisp/lem:$PATH"
```

#### Keyboard Layout

If your keyboard is a JIS layout, you need to put the following settings in `$HOME/.lem/init.lisp`

```common-lisp
#+lem-sdl2
(lem-sdl2:set-keyboard-layout :jis)
```
