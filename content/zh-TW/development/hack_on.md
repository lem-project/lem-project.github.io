---
title: How to Hack on lem Itself
weight: -5
---

There are two ways to hack/develop lem.
* Start Swank on lem and connect from Swank client (other lem process or Emacs SLIME)
* Directly modify lem process behavior

### Start Swank Server from Lem
```
M-x start-lisp-repl
CL-USER> (swank:create-server :dont-close t)
```

### Connect from Emacs or other Lem
```
M-x slime-connect
```

Using this method, it is safe to break lem because the editing process is separate from the main lem process.

### Self connect from Lem

```
M-x slime-self-connect
```

This will open a connection to Lem itself, the only problem with this approach is that if you are tweaking some internal features it may broke the current editor, so be careful.


#### Notes

If you have problems launching lem (maybe for a display error), the lem function has a nice parameter to log the information into a file:
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
From the root directory of the Lem project, using Make.

- With ncurses:

```
 make build-ncurses
```
- With sld2:

```
 make build-sdl2 
```
    
This creates a binary on the root of the lem project called "lem".