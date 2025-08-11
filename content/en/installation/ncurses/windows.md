---
title: Windows
weight: -20
---

## Using the binary

[Lem has nightly AppImage releases](https://github.com/lem-project/lem/releases)! for Linux, MacOS and Windows.

## Installation with Docker

Clone the Lem repository and build a Docker image:

    $ docker build -t lem .

You can now run the ncurses version:

    $ docker run --rm -it -v .:/shared lem
