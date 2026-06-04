---
title: Transient help popup
weight: -30
---

A transient is a text pop-up window, displaying at the bottom of the
screen, that shows keybindings and their associated commands.

The pop-up can stay in place when the user presses a key, which allows
to always show help on-screen.

## Simple example

```lisp
  (define-command example-command () ()
    (message "example message"))

  (lem/transient:define-transient *demo-keymap-simple*
    :description "my demo keymap"
    (:key "a" :suffix 'example-command :description "demo prefix 1")
    (:key "b" :suffix 'example-command :description "demo prefix 2" :active-p nil))

  (define-key *global-keymap* "C-c t" *demo-keymap-simple*)
```

<div style="text-align: center;"> <img src="https://raw.githubusercontent.com/lem-project/lem/main/extensions/transient/transient-simple.png"/> </div>

## Show all current keybindings

Use `Alt-x transient-always-show` to show all available keybindings
for the current mode(s).

You can also use this setting:

```lisp
(setf lem/transient::*transient-always-show* t)
```

<div style="text-align: center;"> <img src="https://raw.githubusercontent.com/lem-project/lem/main/extensions/transient/transient-dashboard.png"/> </div>


## Configuration

### Delay

Add a configurable delay before the transient popup appears. The popup
waits 500ms by default before showing — if the user completes the key
sequence before the timer fires, the popup never appears, avoiding
flicker for fast typists. Once the popup is already visible
(e.g. navigating sub-menus), subsequent keymaps show immediately.

```lisp
;; Adjust delay (default 500ms)
(setf lem/transient:*transient-popup-delay* 300)

;; Disable delay (show immediately)
(setf lem/transient:*transient-popup-delay* 0)
```
