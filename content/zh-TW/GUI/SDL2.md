---
title: SDL2 features
weight: -20
---

<img class="" src="/sdl2.png" alt="">

The SDL2 backend of Lem adds images and graphics support. You can draw at any location on a specified buffer or window.

## Mouse actions

This version also adds mouse support. Mouse clicks allow some actions:

- a **middle mouse click** inserts an S-expression at the cursor position,
- a **double click** or triple click selects S-expressions.

The directory mode handles clicks on files and directories.


![](https://github-production-user-asset-6210df.s3.amazonaws.com/13656378/239887331-8c790229-1f7c-4581-b093-9c56d4d85420.png)

## Games

Lem can run graphical games! Try this:

    M-x load-library RET tetris RET
    M-x tetris

<img class="" src="/tetris.png" alt="">

Stop the game with `q`. By the way, Tetris works in the ncurses frontend too.

Lem's author also showcased running a platform game inside of Lem. See on Youtube: https://youtu.be/FKqpJhO_OHc?t=1120

He develops the game interactively. On the screenshot below, he
inspects the player class, changes its X and Y coordinates and the
game is updated on the fly.

<img class="" src="/developing-game.png" alt="">

Lem developpers are investigated to interface with Trial, the game engine of the Kandria game.

## Misc

### Transparent background

You can add a transparent background to Lem's SDL2 GUI! Add this to your init file:

```
(sdl2-ffi.functions:sdl-set-window-opacity
 (lem-sdl2/display:display-window (lem-sdl2/display:current-display)) 0.9)
```