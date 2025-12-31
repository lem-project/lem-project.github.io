---
title: Clojure
---

Lem's `clojure-mode` provides **syntax highlighting**, **LSP** support and **nREPL** integration:

- full-featured Clojure language mode with syntax highlighting, indentation, and LSP integration
- nREPL client for interactive development with eval, macroexpand, and documentation commands
- REPL mode with history, namespace tracking, and connection management
- Clojure-specific **tools**: inspector, test runner, stacktrace navigation, and detective integration

- Add comprehensive test suite covering bencode protocol, indentation, and mode functionality

## Features

### Core Mode (`clojure-mode.lisp`)

- syntax highlighting for Clojure/ClojureScript/EDN files
- Clojure-specific indentation with customizable rules
- rainbow parentheses support
- namespace detection and tracking
- file type support: `.clj`, `.cljs`, `.cljc`, `.cljx`, `.edn`

### nREPL Integration (`nrepl-client.lisp`, `repl.lisp`)

- full nREPL protocol implementation using bencode
- interactive REPL with command history
- eval commands: `clojure-eval-last-sexp`, `clojure-eval-defun`, `clojure-eval-region`, `clojure-eval-buffer`
- macroexpand support: `clojure-macroexpand-1`, `clojure-macroexpand-all`
- documentation lookup: `clojure-describe-symbol`

### Development Tools

- **Inspector** (`inspector.lisp`): Browse Clojure data structures interactively
- **Test Runner** (`test-runner.lisp`): Run tests with results display and navigation
- **Stacktrace** (`stacktrace.lisp`): Navigate exceptions with source jumping
- **Detective** (`detective.lisp`): Context menu integration for Clojure-specific actions
- **Tools** (`tools.lisp`): Code actions, refactoring, and utilities

### LSP Support (`lsp-config.lisp`)

- integration with clojure-lsp for advanced IDE features
- root patterns: `deps.edn`, `project.clj`, `build.boot`, `shadow-cljs.edn`

The original [PR](https://github.com/lem-project/lem/pull/2068) comes with a full test suite.

It was done with the help of Claude Code.
