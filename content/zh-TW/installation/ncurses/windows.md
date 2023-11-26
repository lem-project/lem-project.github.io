---
title: Windows
weight: -20
---

## Using the binary

[Lem 2.1 was released](https://github.com/lem-project/lem/releases/tag/v2.1.0)! It provides binaries for Linux, MacOS and Windows.


## Installation with Docker

Clone the Lem repository and build a Docker image:

    $ docker build -t lem .

You can now run the ncurses version:

    $ docker run --rm -it -v .:/shared lem
