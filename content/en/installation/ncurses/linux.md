---
title: GNU/Linux
weight: -20
---

## Using the binary

[Lem has nightly AppImage releases](https://github.com/lem-project/lem/releases)! for Linux, MacOS and Windows.

## Debian/Mint/Ubuntu

There is an automatic installer that works on Debian, Linux Mint and Ubuntu.

Before that, install the dependencies:
```
sudo apt install sbcl curl git
```

Now, run the command that will install Lem:
{{< expand "Check the script! (it runs sudo to install more depencies regarding ncurses)" >}}

The sh script is located here https://lem-project.github.io/linux_installer.sh which downloads

the lisp file that is interpreted for SBCL, it can be checked here https://lem-project.github.io/linux-installer.lisp


{{< /expand >}}
```
curl -L https://lem-project.github.io/linux_installer.sh | bash
```

Important places from the script installation:
- `$HOME/common-lisp/lem` (Lem installation location)
- `/usr/local/bin/lem` (Lem symlink)

## Other GNU/Linux

### Installation with Docker

Use the ready-to-use Lem image in the GitHub Container Registry:

    $ docker run --rm -it ghcr.io/lem-project/lem:latest


or clone the Lem repository and build the Docker image:

    $ docker build -t lem .

You can now run it:

    $ docker run --rm -it -v .:/shared lem


### Installation from scratch
- [sbcl](https://www.sbcl.org/)
- [ncurses](https://invisible-island.net/ncurses/announce.html#h2-overview)
- [qlot](https://github.com/fukamachi/qlot)
- [git](https://git-scm.com/)


#### Install SBCL and ncurses library
- Debian-like distro
```
sudo apt install sbcl libncurses5-dev build-essential fd-find
```

- Fedora
```
sudo yum install sbcl ncurses-devel make automake gcc gcc-c++ fd-find
```

- OpenSuse
```
sudo zypper install sbcl ncurses-devel make devel_basis fd
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

### Installation with roswell

> Note: the installation with Roswell is deprecated.

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
