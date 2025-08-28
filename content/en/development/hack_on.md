---
title: How to Hack on lem Itself
weight: -5
---

There are two ways to hack on/develop Lem:

* Work on Lem from Lem, on the same process.
* Start a Micros server on Lem (Lem's fork of Swank), connect to it from another Micros client.

## Hack with Lem

### Self connect from Lem

```
M-x start-lisp-repl
```

This will open a connection to Lem itself. All Lem systems and
packages are loaded and available.

The only problem with this approach is that if you are tweaking some
internal features it may broke the current editor, so be careful.


### Start a Micros server from Lem

Micros is Lem's fork of Swank.

```
M-x start-lisp-repl
CL-USER> (micros:create-server :dont-close t)
```

Next, connect to it from the outside.

### Start another Lem instance and connect

```
M-x slime-connect
```

## Hack with another editor

### Start a Micros/Swank Server from Lem

```
M-x start-lisp-repl
CL-USER> (swank:create-server :dont-close t)
```

### Connect from your editor

```
M-x slime-connect
```

Using this method, it is safe to break Lem because the editing process is separate from the main Lem process.


## How to load Lem (into your Lisp image)

The project's instructions show how to load and run Lem with Roswell. Here's how we can do without, with a regular SBCL REPL and Quicklisp.

This was tested on LinuxMint, with SBCL 2.14 from Roswell and a recent enough Roswell Quicklisp dist (`ros update quicklisp`).

Clone the repository with git submodules:

    git clone --recursive <url to lem>

Lem uses an `asd` file for each of its submodules, so you can't compile the main `lem.asd` and `quickload` it. You need to set `CL_SOURCE_REGISTRY=/path/to/lem//` before starting the repl. Two slashes at the end tell ASDF to search `asd` files in subdirectories.

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

From the root directory of the Lem project, use Make.

- with ncurses:

```
make ncurses
```

- with sld2:

```
make sdl2
```

- with both:

```
make sdl2-ncurses
```

This creates a binary in the root of the Lem project called `lem`.


## Where to find debug logs

If you have problems launching Lem (maybe for a display error), the Lem function has a nice parameter to log the information into a file:

```
CL-USER> (ql:quickload :lem)

CL-USER> (lem:lem "--debug" "--log-filename" "lem.log")
```

This should save the logs in the file "lem.log" from the directory
that the the REPL was launch.
