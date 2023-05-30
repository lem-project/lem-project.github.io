---
title: Lem's displaying concepts
weight: -2
---
Lem has some concept for displaying.
This document is a result of [a survey about them](https://gist.github.com/t-sin/cc0d036e40669395fd41cfd48bb9c997).

## Display(s)

Logical concept for physical displaying areas dealt by frontends; like ncurses, electron and so on.
So display has no data representation in source codes, it appears as a word.
(For now) there is one display per one frontend.
Lem doesn't touch displays directly but touch these via method like `lem-if:display-width`.

Source (for instance): `/frontends/ncurses/ncurses.lisp`

## Views

UI parts like minibuffers or popup windows or normal buffers, in the display(s?).
They're defined in each frontend and Lem doesn't touch them directly.

Source (for instance): `/frontends/ncurses/ncurses.lisp`

## Screens

Lem's low-level displaying area.
Each screens correspond to its view.
Each screen has its position and size, and may have modeline.

Source: /lib/core/interface.lisp

## Windows

Lem's displaying area.
Windows have its screen, buffer and `view-point` (maybe viewport).

Split area is implemented with windows and `window-node` structure.
`window-node` has split type (:hsplit and :vsplit), car and cdr.
Root area is stored in `*window-tree*` special variable.
`*window-tree*` may be an window or an window-node, by which Lem manages nest of displaying area.
If it's an window-node it means Lem's displaying area is splitted,
when its child (car or cdr) is an window-node that child area is also splitted, and so forth...

Source: `/lib/core/window.lisp`

## Frames

Frames are the concept and the structure that represent whole window configuration in a display.
It is introduced by this pull-request https://github.com/cxxxr/lem/pull/500 .

Note the special variable `lem::*display-frame-map*`.
This mapping correspond from display-thing (for now, it's `lem:implementation`) to a frame.
It is for multi frame support in the near future.

Source: `/lib/core/frame.lisp`

### Note

The name `frame` appears some place of `/lib/core/window.lisp` as arguments of `adjust-windows`.
This function seems to do a process when frame size is changed, e.g. terminal resizing.
In this case, `frame` means a display described above.

## Virtual Frames

Virtual frames are introduced by frame-multiplexer (called "fm-mode" at [this PR](https://github.com/cxxxr/lem/pull/501)).
Because, in frame-multiplexer, it is needed to store frames and to switch between them.
One virtual frame store multiple frames in it, and modify `lem::*display-frame-map*` when like frame switching.

Source: `/lib/core/frame-multiplexer.lisp`
