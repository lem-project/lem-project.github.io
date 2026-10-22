---
title: Templates
weight: 1000
---


A templating extension to generate boilerplate in new files.

{{< toc >}}

# Usage

Here is an example template file that generates a simple `.asd` to help get you started.

```
(asdf:defsystem "<%= (pathname-name (@ path)) %>"
  :author ""
  :license "MIT"
  :depends-on ()
  :components ((:module "src"
                :components ((:file "core")))))
```

Assuming this file exists in `~/.config/lem/templates/asd.clt`, you can register it like this:

```lisp
(lem-template:register-template
 :pattern ".*\.asd"
 :file (merge-pathnames "templates/asd.clt" (lem:lem-home)))
```

If you provide multiple templates for the same pattern, with the `:name` option (examples below), you will be prompted to choose a template.

You can create any kind of template you want in the [cl-template](https://github.com/alpha123/cl-template) format, `buffer` and `path` are passed to the template and you can read it with `(@ buffer)`, `(@ path)` etc.

Templating can be disabled if you put this in your config:

```lisp
(setf lem-template:*auto-template* nil)
```

**Many templates**

We can use the plural `register-templates` to register multiple
templates at once, see examples below.

When more than one template is defined for the same file extension,
you will be prompted to choose.

# Templates syntax

We use [cl-template](https://github.com/alpha123/cl-template).

`@` is the macro to get a variable from the data provided at runtime.

Put Lisp code in-between `<%` and `%>`:

```
;; generating HTML:
<ul class="person-list">
  <% (loop for person in (@ people) do
    <li><%= (name person) %>
  <% ) %>
</ul>
```

There are optional syntax differences with pure CL, enabled by default:

- `progn` is automatically inserted into if expressions
  - you can turn `clt:*add-progn-to-if*` to `nil`
- `else` separates clauses of an if expression
- `end` can function as a close parenthesis
- parenthesis inferrence

This template:

```
<ul class="person-list">
  <% (loop for person in (@ people) do
    <li><%= (name person) %>
  <% ) %>
</ul>
```

can be written like the following, with parenthesis inferrence (no
opening paren) and the end tag:

```
<ul class="person-list">
  <% loop for person in (@ people) do %>
    <li><%= name person %></li>
  <% end %>
</ul>
```

# Examples

According we copied the templates in `~/.config/lem/templates/`, we
register them:

```lisp
(lem-template:register-templates
  (:pattern ".*\.asd"
   :name "Basic ASD"
   :file (merge-pathnames "templates/asd.clt" (lem-home)))
  (:pattern ".*\.asd"
   :name "Test ASD"
   :file (merge-pathnames "templates/test.asd.clt" (lem-home)))
  (:pattern ".*\.lisp"
   :file (merge-pathnames "templates/lisp.clt" (lem-home)))
  (:pattern "Makefile"
   :name "Lisp Makefile"
   :file (merge-pathnames "templates/Makefile.clt" (lem-home))))
```

When you create a new `.asd` file, you will be prompted to choose
`Test ASD` or `Basic ASD`.

When you create a new `.lisp` file, it will automatically insert the
single template.

##  Simple Lisp file

`lisp.clt`

This template creates a package named from the current buffer.

```
(uiop:define-package #:<%= (pathname-name (lem:buffer-filename (@ buffer))) %>
  (:use :cl))
(in-package :<%= (pathname-name (lem:buffer-filename (@ buffer))) %>)
```

## A test .asd definition

`test.asd.clt`

This .asd definition requires a `tests/` directory and a file `tests.lisp`.

It uses `:fiveam`.

```
(asdf:defsystem "<%= (pathname-name (@ path)) %>"
  :author ""
  :license "MIT"
  :depends-on (:fiveam)
  :components ((:module "tests"
                :components ((:file "tests")))))
```

## Makefile for a Lisp project

`Makefile.clt`

This template defines a LISP variable using `qlot` and a `build`
target, that loads our project's .asd, quickloads it, and calls
`asdf:make` to build a binary (following the .asd specifications).

```
##
# <%= (car (last (pathname-directory (@ path)))) %>
#
# @file
# @version 0.1

LISP ?= qlot exec sbcl

build:
	$(LISP) --load <%= (car (last (pathname-directory (@ path)))) %>.asd \
		--eval '(ql:quickload :<%= (car (last (pathname-directory (@ path)))) %>)' \
		--eval '(asdf:make :<%= (car (last (pathname-directory (@ path)))) %>)' \
		--eval '(quit)'

# end
```
