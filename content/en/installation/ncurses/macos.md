---
title: MacOS
weight: -20
---
## Using the binary

[Lem has nightly AppImage releases](https://github.com/lem-project/lem/releases)! for Linux, MacOS and Windows.

Please run it with the `xattr` command below.

#### How to Fix “App Is Damaged and Can’t Be Opened” on OSX

Copy the app file to the applications folder and type the following in your terminal:
```
xattr -d com.apple.quarantine /Applications/lem.app
```

### Installation with Docker

Clone the Lem repository and build a Docker image:

    $ docker build -t lem .

You can now run it:

    $ docker run --rm -it -v .:/shared lem

## Installation from scratch
- [sbcl](https://www.sbcl.org/)
- [ncurses](https://invisible-island.net/ncurses/announce.html#h2-overview)
- [qlot](https://github.com/fukamachi/qlot)
- [git](https://git-scm.com/)


### Install SBCL and ncurses
- Using HomeBrew https://brew.sh/

```
brew install sbcl ncurses
```

### Install qlot
- Automatic installer
```
curl -L https://qlot.tech/installer | bash
```
For an alternative installation, https://github.com/fukamachi/qlot#installation


#### Download and build the executable

- Create the directories

```
mkdir $HOME/common-lisp && cd $HOME/common-lisp
```
```
git clone https://github.com/lem-project/lem.git
cd lem && make ncurses
```

or run `make sdl2-ncurses` to build Lem with the two interfaces in it. Then choose the interface at startup with `-i / --interface`, either "sdl2" or "ncurses".

#### Add the executable to PATH
- Copying the PATH to `~/.bashrc`
```
export PATH="$HOME/common-lisp/lem:$PATH"
```

## Installation with roswell (deprecated)

Please install roswell at first, [Roswell Installation Guide](https://github.com/roswell/roswell/wiki/Installation).

After that, please follow the steps bellow.

1. Install lem by roswell

```
$ ros follow-dependency=t install lem-project/lem
```

2. Add the PATH in the initialization file (such as `~/.bashrc`)
```
export PATH=$PATH:~/.roswell/bin
```
