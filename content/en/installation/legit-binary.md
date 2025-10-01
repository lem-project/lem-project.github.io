---
title: Build a legit binary
weight: 400
---

[Lem/legit](https://lem-project.github.io/usage/usage/#version-control-with-lemlegit-git-experimental) is a UI for Git (and, to a lower extent, Mercurial and Fossil).

We call it from Lem with `Alt-x legit`.

![](https://raw.githubusercontent.com/lem-project/lem/main/extensions/legit/lem-status.png)

Here we'll build a `legit` binary, so that we can quickly call it from
the terminal on a current project.

After you installed Lem from sources, run this make target:

    make legit

This creates a `legit` binary at the project root.

You can copy it to `~/.local/bin/` or create a symlink:

    ln -s /path/to/lem/legit ~/.local/bin/legit

Now, simply run `legit` on a project:

    $ legit

to see its status, and start working.
