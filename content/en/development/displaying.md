---
title: Displaying concepts
weight: -2
---

Lem has some concept for displaying.
This document is a result of [a survey about them](https://gist.github.com/t-sin/cc0d036e40669395fd41cfd48bb9c997).

{{< toc >}}

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

## Editing display concepts

These displaying mechanisms are used in text buffers.

### Visually selecting text - the mark

Setting the mark allows to start a visual selection of text.

It also allows to add a point to the *mark ring*, which further allows
to circle back between marks.

It can be done with

```lisp
  (set-current-mark (current-point))
```

`set-cursor-mark` is similar, and in addition it pushes the point to the mark ring.

For example, this is how the command `mark-set-whole-buffer` is implemented:

```lisp
(define-command (mark-set-whole-buffer (:advice-classes jump-cursor-advice)) () ()
  "Select the whole buffer as a region."
  (buffer-end (current-point))       ;; move the current point
  (set-current-mark (current-point)) ;; set the mark to the current point, start visual selection.
  (buffer-start (current-point))     ;; move the point, effectively selecting all text.
  (message "Mark set whole buffer"))
```

### Overlays: showing meta data on top of content

#### What are overlays?

Overlays allow to complement the buffer's text with all sort of
metadata. It is visible, it appears "around" the text (in the left
margin, in the emply line space on the right…), but it isn't part of
the buffer's content. It can be temporary.

For example, when your compile a Lisp form, you see a fast visual
effect around it: it was an overlay that was created, and quickly
deleted. When you evaluate a Lisp form, its result is showed on its
right: it is an overlay.

An overlay is defined by a class, with slots: `start, end, temporary,
buffer, attribute, plist, alivep`.

We access those slots with:

```lisp
overlay-start
overlay-end
overlay-attribute
overlay-buffer
etc
```

The class `line-endings-overlay` extends a base overlay with more slots: `text, offset`.

<!-- XXX: what are they? -->
<!-- We also have `cursor-overlay`. -->

See:

- [src/overlays.lisp](https://github.com/lem-project/lem/blob/main/src/overlay.lisp)

#### How to create overlays

When an overlay is created (with `make-overlay` and the other corresponding
constructor functions), it is automatically pushed to the buffer's
list of overlays, and is displayed.

```lisp
;;; src/overlays.lisp
(make-overlay start end attribute
              &key (start-point-kind :right-inserting)
                   (end-point-kind :left-inserting)
                   temporary)
```

For example:

~~~lisp
(make-overlay (current-point) (current-point) 'syntax-warning-attribute)
~~~

buuut… it might be difficult to see.

Here we create an overlay at the line end with some text to display:

```lisp
(make-line-endings-overlay (current-point) (current-point) 'syntax-warning-attribute :text "hello")
```

This creates an overlay at the end of the line, showing "hello" in red (the color of our attribute).

Learn about attributes below.

#### How to delete overlays

To delete a given overlay, use `delete-overlay` with your overlay object as argument.

To delete all the current buffer overlays, use `(clear-overlays)` (you
can also call this with `M-:`).


### Text properties, attributes

Attributes allow to display rich text: bold, italic, foreground and background colors… but
they also allow to store metadata in buffer strings. In that case,
attributes are invisible.

For example, Legit's status buffer displays a line of text `Untracked
Files` with the built-in attribute `:header-marker`, like this:

```lisp
(put-text-property start point :header-marker t))
;;                             ^^ attribute  ^^^ attribute value
```

Thanks to it, we can implement a keyboard shortcut to navigate from
one heading to another.

Attributes are created with `define-attribute name (specs)`
where `specs` is a list of properties for a `:light` theme, a `:dark` one, or all (`t`).

```lisp
(define-attribute filename-attribute
  (t :foreground :base0D))
```

Built-in attributes are defined in `src/attributes.lisp`, such as:

```lisp
;; built-in attributes
(define-attribute cursor
  (:light :background "black")
  (:dark :background "white"))

(define-attribute region
  (:light :foreground nil :background "#eedc82")
  (:dark :foreground nil :background "blue"))

(define-attribute syntax-warning-attribute
  (t :foreground "red"))

(define-attribute syntax-comment-attribute
  (:light :foreground "#cd0000")
  (:dark :foreground "chocolate1"))


(define-attribute document-header1-attribute
  (:light :foreground "#000000" :bold t)
  (:dark :foreground "#FFFFFF" :bold t))
```

and so on.
