---
title: Common Lisp commands
weight: -10
---

{{< toc >}}

Lem is written and extensible in Common Lisp. You can start writing
and compiling Common Lisp code right away.

Use TAB-completion, compile a function with `C-c C-c` and start a REPL with `Alt-x start-lisp-repl` or just switch to one with `C-c C-z`.

<a href="/lem-lisp.png"> <img class="" src="/lem-lisp.png" alt=""> </a>


## REPL

Start a Lisp REPL with `Alt-x slime`.

To switch to the REPL from a Lisp buffer, even if you didn't start it before, use `C-c C-z`. You can use quick commands inside the REPL. They start with a `,` (comma). For example:

* `change-package` changes the REPL's current CL package
* `quickload`, to choose a Quicklisp system (with autocompletion) and load it.
* `sayonara` quits the REPL.
* `pwd` prints Lem's current working directory.
* `cd` changes it,
* `ls` lists files and directories. This list has the same form as the list of directory-mode and is interactive: we can visit files at point (see screenshot below).

Inside the REPL, go up to the previous prompt with `C-c p` (`backward-prompt`) and down to the next one with `C-n n` (`forward-prompt`).

Search in the prompt history with `M-r` (`listener-isearch-history`).

> You can open Lem with a Lisp REPL with this one-liner: `lem --eval "(lem-lisp-mode:start-lisp-repl t)"`

<a href="/lem-repl-ls.png"> <img class="" src="/lem-repl-ls.png" alt="The ,ls command in a REPL prints a files and directories listing we can click on."> </a>

### Start a REPL with Lem packages available

There is a second way to start a Lisp REPL: `Alt-x start-lisp-repl`.

This gives you a REPL, with the benefit that all Lem systems and packages are loaded and available. You should use this to explore Lem and work on it.


### Start a REPL with another Lisp core

Use a prefix argument, as in `C-u Alt-x slime`. This prompts you for a Lisp command, with a pre-defined list of options such as `sbcl`, `ros run`, `ros -L ccl-bin`…).

This way, you can choose another implementation, you can choose an
image of your own (with `--core`), and you can set other command line
arguments. For example, to extend the dynamic space size for SBCL:

    C-u Alt-x slime <RET> sbcl --dynamic-space-size 4GiB


### Start a REPL from the terminal with `lem --eval`

You can open Lem straight into a Lisp REPL with this command-line invocation:

    lem --eval '(lem-lisp-mode:start-lisp-repl t)'

Too long to type? Just create a bash alias and add it in your `~/.bashrc`.

    alias ilem="lem --eval '(lem-lisp-mode:start-lisp-repl t)'"


### Connect to a running Lisp server (Micros)

You can connect Lem to another, external Lisp process, with `Alt-x slime-connect`.

This Lisp process must be a `micros` server, and not `swank`.

### REPL commands

- use `C-c C-u` to clear the current input.

REPL history:

- use `M-p` (`listener-previous-input`) to recall previous inputs.
  - see also `listener-previous-startswith-input` so that the input you recall matches what is written on the current REPL.
- use `M-n` (`listener-next-input`) to get the next input(s).
- use `M-r` (`listener-isearch-history-previous`) to interactively search a previous input.
  - inside this prompt, use `C-r` and `C-s` to cycle between candidates.
  - see also `listener-previous-matching-input RET regexp RET`, an interactive command to find a previous input matching a regexp.

Clear output:

- use `C-c M-o` (`listener-clear-buffer`) to clear all the REPL buffer.

REPL commands are defined in [`listener-mode.lisp`](https://github.com/lem-project/lem/blob/main/src/ext/listener-mode.lisp).


### Configuration

You can do something when the REPL starts by using its `lem-lisp-mode:*lisp-repl-hook*`.

For example: you have enable `vi-mode` by default, and you want to enter the REPL in vi's insert-mode:

    (add-hook lem-lisp-mode:*lisp-repl-mode-hook* 'lem-vi-mode/commands:vi-insert)

> Note: this hook was added after Lem 2.1.

## Compilation

To compile and load a buffer, use `C-c C-k`. To compile a function: `C-c C-c`.

Common Lisp gives you type warnings and other errors at compile time.

## Evaluation

To evaluate the last s-expression, use `C-x C-e`. Lem prints the result in an overlay.

The overlays go away when you edit their preceding definition or when you call `Alt-x lisp-eval-clear`, which is also accessible in the context menu with `M-h`, and by choosing "Clear eval results".

You can evaluate the last expression and print its result into the
buffer, under the cursor. Use `lisp-eval-last-expression-and-insert`.

## Evaluation prompt

To evaluate some Lisp code globalyl wherever you are in Lem, use `M-:`.

## Inspection

Use `C-c I` (`Alt-x lisp-inspect`) to get an inspector window about an expression. If the
point is on a symbol, inspect this symbol. It works with objects printed on the REPL.

Use `Alt-x lisp-browse-class-as-tree` to display the inheritance tree of a class.
In the screenshot below, you can inspect a class node by clicking on it.
You can also scroll the graph with the same key bindings as cursor movement.

For example, inspect `lem::editor-condition` or `simple-condition`.

<a href="/class-tree.png"> <img class="" src="/lem-lisp.png" alt="class tree inspector: a graph of clickable nodes."> </a>


## Interactive debugger

Lem features an advanced interactive debugger.

You can navigate and
inspect the stacktraces (`C-n`, `C-p`), go to the error's origin (`v`
on the backtrace), restart a given point of the backtrace (`r`,
`sldb-restart-frame`), and so on. Quit the debugger with `q`, or use a
suggested restart (by entering its number, pressing Enter on it, or
clicking on it).

## Code navigation (find-definitions, lisp-search-symbol)

Use `M-.` (`find-definitions`) to go to a symbol definition. This
opens the source file where this symbol was defined. Use `M-,` to come back.

It works when the cursor is on a Lisp symbol, and also… when it
isn't. In that case, Lem asks you for a symbol *with autocompletion of
all known symbols of the current Lisp image*, and it brings you to
this symbol's definition.

> If you can't find the definition of built-in symbols provided by your implementation, and get the `directory does not exists: ...` error, then you may need to specify the `source directory` of your implementation.
> Add this in your init file: `(sb-ext:set-sbcl-source-location "/path/to/your/source-of-implementation/")` to specify the source direcoty (given `sbcl` is the underlying implementation). A usual value is `"/usr/share/sbcl-source/"`.
> If you installed Lem with Roswell (which isn't the preferred method anymore), you can create the `~/.roswell/init.lisp` init file, and you can install SBCL source files with `ros install sbcl --without-install`.

"All symbols" really means all the symbols of any package that was
loaded in the image. This includes the implementation and Lem's
packages, the code of your current project, and any other third-party
library that was loaded in the current image.

> This is an efficient method to jump around your code and explore anything loaded in the Lisp image.

The command `lisp-search-symbol` (`C-c C-d s`) is similar, but more to the point: it asks for a lisp symbol, with autocompletion, and brings us to the symbol's definition.

> lisp-search-symbol was added after Lem 2.1.

## Trace

> These commands were added after Lem 2.0.

The following two commands are shortcuts around the built-in `trace` macro:

* `Alt-x lisp-toggle-trace` (`C-c C-t`): toggle tracing of the function under point.
* `Alt-x lisp-trace-list` (`C-c T`): see all the traced functions, select the ones to untrace.

## Watch

> These commands were added after Lem 2.0.

A new feature in `micros` (Lem's fork of Swank) allows to display evaluation results on the fly.

By adding `(micros:watch some-lisp-form)` in your code, you can see
intermediate (and final) results being displayed in the source buffer,
in overlays, next to the watch call.

<video src="https://user-images.githubusercontent.com/13656378/250151099-cdeb8ead-3380-4804-b85b-d487a7e733b1.mp4" data-canonical-src="https://user-images.githubusercontent.com/13656378/250151099-cdeb8ead-3380-4804-b85b-d487a7e733b1.mp4" controls="controls" muted="muted" class="d-block rounded-bottom-2 border-top width-fit" style="max-height:640px; min-height: 200px"> </video>

## Macrostep, macroexpand

The **macrostep** commands are interactive commands that allow to expand the macro at point *right inside the source file*. It is a great way to understand what the macro is doing, and debug it.

The **macroexpand** commands expand the macro too, but show the result in an overlay window.

To call macrostep, put the cursor at the opening parentheses and call `Alt-x lisp-macrostep-expand` (`C-c Return`). This will show you an information message saying that `q` will undo the macroexpand and come back to normal. Your macro is expanded a first time.

Press `C-c Return` a second time (or call `lisp-macrostep-next`) to expand the macro once again.

Press `q` to quit the macroexpand mode and see the original source again. You have more keys to interact with the expansions:

| Command | Key-combination | Function                                                       |
|:-------:|:-------:|:----------------------------------------------------------------------:|
| `lisp-macrostep-expand`    | `C-c Return`           | expand once, enter macrostep mode    |
| `lisp-macrostep-next`      | `Tab`, `Return`        | expand the macro once again          |
| `lisp-macrostep-previous`  | `Shit-Tab`             | previous macro-expansio              |
| `lisp-macrostep-undo`      | `Return`               | undo previous step                   |
| `lisp-macrostep-quit`      | `q`                    | quit and come back to the source     |


You can also call `Alt-x lisp-macroexpand-all` (`C-c M-m`) to expand the macro completely, or `Alt-x lisp-macroexpand`.

## Sync packages

Use the shortcut `C-c ~` (`Alt-x lisp-listen-in-current-package`) to
cause the REPL's package to be switched to the buffer's active
package.

Note that, unlike Emacs and Slime, it doesn't switch Lisp's current
directory.

## Remove unused imports

The function `Alt-x lisp-organize-imports` will delete the unnecessary
imports from the package definition (from the symbols in
`:import-from`).

For example, if you have this package definition where `proper-list`
is unused:

```lisp
(uiop:define-package :lem/porcelain
  (:use :cl)
  (:import-from :trivial-types
                :proper-list))  ;; <-- unused
```

run `Alt-x lisp-organize-imports` and it's removed:

```lisp
(uiop:define-package :lem/porcelain
  (:use :cl)
  (:import-from :trivial-types))
```


## Code search

### Apropos

`apropos` is a built-in Common Lisp function that you can use at the
REPL. Lem provides the command `Alt-x apropos-command` that shows the
result in a floating window.

`apropos` searches for symbols (functions, methods, variables…) whose name contain your search term. For example, at the REPL:

```
CL-USER> (apropos "random")
ALEXANDRIA::RANDOM-NUMBER
[…]
*RANDOM-STATE* (bound, RANDOM-STATE)
MAKE-RANDOM-STATE (fbound)
RANDOM (fbound)
RANDOM-STATE
RANDOM-STATE-P (fbound)
```

### HyperSpec lookup

> These commands were added after Lem 2.0.

Try one of these two commands:

- `hyperspec-at-point` opens a browser to the HyperSpec page for the Lisp symbol the point is on. You can also right-click on a symbol (GUI version).
- `hyperspec-lookup` lets you choose a symbol (with auto-completion).

## Editing

Lem in SDL2 supports double clicks to select s-expressions. A middle mouse click inserts a s-expression.

Lem obviously supports good auto-completion for Common Lisp. It uses its own version of the Swank server.

Use the TAB key to auto-complete a Lisp variable or function.

When you go over the completion candidates, Lem shows you the function signature and its docstring (see screenshot above).

### Paredit mode

Paredit helps to handle parentheses balanced in your lisp code.

Start it with

    Alt-x paredit-mode

It defines keys on:

- "(" and ")" to keep parentheses balanced
- a double quote (to insert a double quote)
- the delete key
- C-k: "kill" a s-expression, keeping parens balanced.
- C-right: "slurp" to move a closing paren one symbol to the right
- C-left: "barf", similar but to the left
- M-s: "splice", to make vanish a set of parens
- M-r: "raise", to move the expression at point up in the code tree, potentially deleting its parent and sibling expressions
- M-(: "wrap" the following expression inside a set of parens.

See also the Pareto third-party mode for a lispy-like editing.

### Colourful parentheses

Lem by default highlights the matching pair when the point is on a
parenthesis. This minor mode is called `toggle-show-paren` and it is
on by default.

You can bring distinct colours to each pair with this
simple command:

    Alt-x toggle-paren-coloring

## Testing

### Using micro with test-runner

It works by using the underlying connection to the lisp server.

For now, it only works with the `rove` testing framework.

For example, have a test function like this:

```lisp
(deftest foo
  (ok (= 1 2)))
```

And use one of the available commands available:

- `Alt-x lisp-test-runner-run-current` or (`C-c C-r`): send the current test symbol to the connection.
- `Alt-x lisp-test-runner-run-buffer` or (`C-c C-R`): run the test suite of the current buffer.

## APPENDIX: Lem features not found in Emacs and Slime

Lem has some unique features. Did you spot them?

- the `watch` feature, that displays evaluation results on the fly, in overlays.
- the `Alt-x lisp-organize-import` function
- when evaluating expressions (C-x C-e), Lem prints the result in an overlay.
- function arguments and the function signature are given in a clear UI.
- when you run the `ls` command at the REPL (the comma-command with
  `,ls`), the output is interactive:
  - the list looks like a list of files in directory-mode, and we can
    visit the file at point.
- in the SDL2 version, double clicks select s-expressions. A middle mouse click inserts a s-expression.
- Lem handles symbols presentations in a bit more contexts
- the test-runner functions
- the Live Canvas for code analysis through an interactive graph.

But don't assume the list is complete ;)
