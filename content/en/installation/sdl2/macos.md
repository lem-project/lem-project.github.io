---
title: MacOS
weight: -20
---

> **Note:** the SDL2 UI is deprecated in favor of the Webview one. It won't receive updates.

## Using the binary

[Lem has nightly AppImage releases](https://github.com/lem-project/lem/releases)! for Linux, MacOS and Windows.


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

or run `make sdl2-ncurses` to build Lem with the two interfaces in it. Then choose the interface at startup with `-i / --interface`, either "sdl2" or "ncurses".

### Add the executable to PATH
- Copying the PATH to `~/.bashrc`
```
export PATH="$HOME/common-lisp/lem:$PATH"
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

### Keyboard Layout

If your keyboard is a JIS layout, you need to put the following settings in `$HOME/.lem/init.lisp`

```common-lisp
#+lem-sdl2
(lem-sdl2:set-keyboard-layout :jis)
```
