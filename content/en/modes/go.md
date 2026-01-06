---
title: Go
---

Lem supports Go.

Start it with `Alt-x go-mode`.

## LSP

Its LSP config is:

```lisp

(define-language-spec (go-spec lem-go-mode:go-mode)
  :language-id "go"
  :root-uri-patterns '("go.mod")
  :command (lambda (port) `("gopls" "serve" "-port" ,(princ-to-string port)))
  :install-command "go install golang.org/x/tools/gopls@latest"
  :readme-url "https://github.com/golang/tools/tree/master/gopls"
  :connection-mode :tcp)
```

Please install `gopls` and refer to Lem's LSP documentation.

## Other commands

Go mode is defined in [extensions/go-mode/go-mode.lisp](https://github.com/lem-project/lem/blob/main/extensions/go-mode/go-mode.lisp). It enables:

- completion
- go to beginning/end of defun
- automatic indent
- syntax highlighting (although available via LSP)
- insertion of line comments
- find function definition
- idle function
- electric closing of delimiters
- goflymake with messages in overlays
  - use `go-remove-notes` to remove all notes.
- `M-x godoc`


## Default keybindings

```lisp

(define-key *go-mode-keymap* "}" 'go-electric-close)
(define-key *go-mode-keymap* "C-c C-d" 'godef-describe)
(define-key *go-mode-keymap* "C-c M-c" 'go-remove-notes)
```
