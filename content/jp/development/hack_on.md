---
title: How to Hack on lem Itself
weight: -5
---

There are two ways to hack/develop lem.
* Directly modify lem process behavior
* Start Swank on lem and connect from Swank client (other lem process or Emacs Slime)

In the first case, just open a file and edit. Any evaluated expressions would apply immediately.
The disadvantage of this choice is the editing process and the editor process are the same process so if you break the process, the editor would be in an unstable state, and you may lose work because of this.
 
The second case, would start by following way:

### start Swank Server from lem
```
M-x start-lisp-repl
CL-USER> (swank:create-server :dont-close t)
```

### Connect From Emacs or Other lem
```
M-x slime-connect
```

Using this method, it is safe to break lem because the editing process is separate from the main lem process.

#### Notes

I (@svetlyak40wt) found, that when you do `M-x start-lisp-repl`, then you can just browse lem's sources, and hit `C-c C-c` on any definition, to change your lem's behaviour. No need to start a Swank server and to connect it from the separate Emacs.


Also, if you have problems launching lem (maybe for a display error), the lem function has a nice parameter to log the information into a file:
```
CL-USER> (ql:quickload :lem)

CL-USER> (lem:lem "--debug" "--log-filename" "lem.log")
```

This should save the logs in the file "lem.log" from the directory that the the REPL was launch.

## Loading lem (into your Lisp image)

The project's instructions show how to load and run Lem with Roswell. Here's how we can do without, with a regular SBCL REPL and Quicklisp.

This was tested on LinuxMint 20, with SBCL 2.14 from Roswell and a recent enough Roswell Quicklisp dist (`ros update quicklisp`).

Clone the repository with git submodules:

    git clone --recursive <url to lem>

lem uses an `asd` file for each of its submodules, so you can't compile the main `lem.asd` and `quickload` it. You need to set `CL_SOURCE_REGISTRY=/path/to/lem//` before starting the repl. Two slashes at the end tell ASDF to search `asd` files in subdirectories.

```
$ cd lem/
$ CL_SOURCE_REGISTRY=$(pwd)// rlwrap sbcl
* (asdf:load-asd "/path/to/lem.asd")
* (ql:quickload "lem")
[…]
* (lem:lem)
[… builds and runs the ncurses frontend …]
```

Load the SDL2 frontend:

```lisp
* (ql:quickload "lem-sdl2")
```

To build a binary, see the following section.

## Building lem

```
    ./bootstrap
    ./configure
```

and optionally

```
    make install
```

This creates a binary in the `bin/` directory.
