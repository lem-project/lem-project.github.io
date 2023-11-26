---
title: Directory mode
---

When you open a directory (`C-x C-f` and don't choose a file,
but a directory), Lem shows a list of files and directories.

![](https://github-production-user-asset-6210df.s3.amazonaws.com/13656378/239887331-8c790229-1f7c-4581-b093-9c56d4d85420.png)

## Keybindings

With Lem's GUI frontend (SDL2), you can click on files and directories.

Here is a list of keybindings. Emacs' Dired users will feel right at home.

| Key-combination | Function                                                             |
|:---------------:|:--------------------------------------------------------------------:|
|                 |                                                                      |
| "n"             | next line                                                            |
| "p"             | previous line                                                        |
| "q"             | qui                                                                  |
| "^"             | go up one directory                                                  |
| "Enter"         | visit the file or the directory at point                             |
| "Space"         | read the file                                                        |
| "g"             | update the directory buffer                                          |
| "m"             | mark file                                                            |
| "u"             | unmark file                                                          |
| "U"             | unmark all                                                           |
| "t"             | toggle marks (the unmarked ones become marked)                       |
| "* !"           | unmark all                                                           |
| "* %"           | mark files and directories by regex                                  |
| "Q"             | query-replace in marked files and directories                        |
| "D"             | delete marked files and directories (recursively, with confirmation) |
| "C"             | copy marked files and directories                                    |
| "R"             | rename                                                               |
| "s"             | sort files and directories by mtime, then by size, and back to file name. |
| "+"             | make a directory                                                     |

Key bindings added after the Lem 2.1 release:

| Key-combination | Function                                                                  |
|:---------------:|:-------------------------------------------------------------------------:|
| "C-x C-j"       | find-file-directory. From a file buffer, open this file's directory.      |

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
