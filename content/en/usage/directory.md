---
title: Directory mode
weight: -35
---

When you open a directory (`C-x C-f` and don't choose a file,
but a directory), Lem shows a list of files and directories.

When you enter the "writable-directory" mode, you can edit file names
as if the directory listing was a text buffer.

![](https://github-production-user-asset-6210df.s3.amazonaws.com/13656378/239887331-8c790229-1f7c-4581-b093-9c56d4d85420.png)

## Keybindings

With Lem's GUI frontend (SDL2), you can click on files and directories.

Here is a list of keybindings.

| Key-combination | Function                                                                  |
|:---------------:|:-------------------------------------------------------------------------:|
|                 |                                                                           |
| "n"             | next line                                                                 |
| "p"             | previous line                                                             |
| "q"             | quit                                                                      |
| "^"             | go up one directory                                                       |
| "Enter"         | visit the file or the directory at point                                  |
| "Space"         | read the file                                                             |
| "g"             | update the directory buffer                                               |
| "m"             | mark file                                                                 |
| "u"             | unmark file                                                               |
| "U"             | unmark all                                                                |
| "t"             | toggle marks (the unmarked ones become marked)                            |
| "* !"           | unmark all                                                                |
| "* %"           | mark files and directories by regex                                       |
| "Q"             | query-replace in marked files and directories                             |
| "D"             | delete marked files and directories (recursively, with confirmation)      |
| "C"             | copy marked files and directories                                         |
| "R"             | rename                                                                    |
| "s"             | sort files and directories by mtime, then by size, and back to file name. |
| "S"             | open the sort transient menu.                                             |
| "S x"           | sort by file extension.                                                   |
| "S r"           | reverse the sort order.                                                   |
| "+"             | make a directory                                                          |

Key bindings added after the Lem 2.1 release:

| Key-combination | Function                                                                  |
|:---------------:|:-------------------------------------------------------------------------:|
| "C-x C-j"       | find-file-directory. From a file buffer, open this file's directory.      |

### Transient menu

When you press `S` (capital s), after a short delay, a [Transient pop-up menu](https://lem-project.github.io/usage/transient/) appears
with sort options.

Press n, s, t, x or r to sort by name, size, last modification time,
file extension, and reverse the sort order.

<img class="" src="/directory-mode-transient.png" alt="The Transient menu showing sorting options.">



### Opening multimedia files

Lem is smart enough to open files that it doesn't natively support
with another program. Multimedia files, for example, will be opened
with your favourite media player.

### Opening image files

Lem will open the following file extensions:

    ("png" "jpg" "jpeg" "bmp" "gif")

### Opening PDF files

Lem opens a PDF file natively, we can tell it to use an external program:

~~~lisp
;; .lem/init.lisp
(defmethod lem-core/commands/file::execute-find-file :around (executor mode pathname)
  (if (find (pathname-type pathname) '("pdf") :test #'equal)
      (open-external-file pathname)
      (call-next-method)))
~~~

## Writable directory mode

The writable-directory mode turns the directory buffer as an almost
normal text buffer. The file names become editable. We can use Lem's
built-in text commands to edit file names in bulk. Once we are done,
we validate the changes, file names are changed, and we are back to
the normal directory listing.

To enter `writable-directory-mode`, use `C-x C-q` (or `Alt-x writable-directory-change-to-writable-directory`).

Make changes (use search and replace, square selection, multiple cursors…).

Validate changes with `C-c C-c` (or `Alt-x writable-directory-finish-edit`).

Abort changes with `C-c C-k` (or `Alt-x writable-directory-abort-changes`).

Here's a short screencast. We enter writable-directory-mode and change file names in bulk.

<video width="640" height="360" controls muted>
  <source src="/writable-directory.webm" type="video/webm">
  writable directory
</video>


## Configuration

You can write your own commands to act on the selected files and directories.

Here's how the built-in delete command is implemented:


~~~lisp
(define-command directory-mode-delete-files () ()
  (let ((files (selected-files (current-point))))
    (when (prompt-for-y-or-n-p (format nil "Really delete files~%~{- ~A~%~}" files))
      (dolist (file files)
        (delete-file* file))
      (update-all))))
~~~

We get the list of marked items with `(selected-files
(current-point))`, do something, and update the buffer.
