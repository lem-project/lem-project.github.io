---
title: GNU/Linux
weight: -20
---
    
## Using the binary
    
[Lem 2.1 was released](https://github.com/lem-project/lem/releases/tag/v2.1.0)! It provides binaries for Linux, MacOS and Windows.

## Arch linux
    
- Enable the AUR arch package system https://wiki.archlinux.org/title/Arch_User_Repository
    
- Run the installation command:
```
sudo pacman -Sy lem-editor-git
```

## Other GNU/Linux
    
### Installation with roswell

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

### Installation with Docker

Clone the Lem repository and build a Docker image:

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
sudo apt install sbcl libncurses5-dev build-essential
```
    
- Fedora
```
sudo yum install sbcl ncurses-devel make automake gcc gcc-c++
```
    
- OpenSuse
```
sudo zypper install sbcl ncurses-devel make devel_basis
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

#### Add the executable to PATH
- Copying the PATH to `~/.bashrc`
```
export PATH="$HOME/common-lisp/lem:$PATH"
```
