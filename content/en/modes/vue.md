---
title: Vue
---

Lem has a Vue major mode that connects to a LSP server.

## Configuration

Vue-mode is enabled for `.vue` files. It relies on the npm packages
`@vue/language-server` and the typescript dependencies, which will be
installed automatically.

This is its default LSP configuration:

```lisp
(in-package :lem-vue-mode/lsp-config)


(define-language-spec (vue-spec vue-mode
                                :parent-spec lem-js-mode/lsp-config::js-spec)
  :language-id "vue"
  :install-command "npm install -g typescript-language-server typescript @vue/language-server @vue/typescript-plugin"
  :readme-url "https://github.com/vuejs/language-tools")
```

and its default configuration:

```lisp
(in-package :lem-vue-mode)


(defvar *vue-language-server-location*
  #+unix #P"/usr/lib/node_modules/@vue/language-server/"
  #+windows (merge-pathnames "npm/node_modules/@vue/language-server/" (uiop:getenv "APPDATA"))
  "The location of the language server source code files for \"@vue/language-server\"")

(define-major-mode vue-mode language-mode
    (:name "Vue"
     :mode-hook *vue-mode-hook*
     :keymap *vue-mode-keymap*
     :formatter 'lem-js-mode::prettier
     :syntax-table lem-js-mode::*js-syntax-table*)
  (setf (variable-value 'enable-syntax-highlight) t
        (variable-value 'indent-tabs-mode) nil
        (variable-value 'tab-width) 2
        (variable-value 'calc-indent-function) 'js-calc-indent
        (variable-value 'line-comment) "//"
        (variable-value 'beginning-of-defun-function) 'beginning-of-defun
        (variable-value 'end-of-defun-function) 'end-of-defun))

(define-file-type ("vue") vue-mode)
```
