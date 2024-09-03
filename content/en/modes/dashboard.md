---
title: Dashboard
---

Lem ships with a customizable dashboard, `lem-dashboard`, out of the box:

![Default dashboard](/default-dashboard.png)

Besides a more friendly greeting than a `*tmp*` buffer, it ships with useful shortcuts like starting a lisp scratch or seeing recent files/projects at a glance.

The dashboard is launched when you open lem without passing any file arguments. If you wish to open/reopen it, you can do so with `M-x open-dashboard`.

## Basic Customization

### Disable

To disable, simply set `*dashboard-enable*` to `nil` in your `init.lisp`:

```lisp
(setf lem-dashboard:*dashboard-enable* nil)
```

### Customizing default dashboard

If you want to make changes to the dashboard without defining a custom layout, there is a convenience function `set-default-dashboard` that you can use to make minor modifications:

```lisp
(lem-dashboard:set-default-dashboard :project-count 1 
                                     :file-count 6
                                     :hide-links t 
                                     :splash '("hello" "hello again"))
```

Which would look like:

![Customized default dashboard](/customized-default-dashboard.png)

Here are the currently available keywords:

- `hide-links`: Whether to hide the doc/GitHub links.
- `project-count`: How many projects to list.
- `file-count`: How many recent files to list.
- `splash`: List of splash messages, will be randomly chosen.
- `footer-messages`: List of footer messages, will be randomly chosen.

## Advanced Customization

`lem-dashboard` is designed to be customizable. If you wish to make more changes than `set-default-dashboard` allows, you can make your own dashboard layout.

A dashboard is simply a list of `dashboard-item` instances. Here's a list of available items:

- `dashboard-splash`: Randomly displays one of `SPLASH-TEXTS`.
- `dashboard-url`: Creates link/button with `DISPLAY-TEXT` that opens `URL` externally.
- `dashboard-working-dir`: Prints current working directory.
- `dashboard-footer-message`: Randomly displays one of the passed-in `MESSAGES`.
- `dashboard-command`: Creates a link/button with `DISPLAY-TEXT` that executes `ACTION-COMMAND` when clicked/activated.
- `dashboard-recent-projects`: Displays a list of recent projects, limited to the last `PROJECT-COUNT`.
- `dashboard-recent-files`: Displays a list of recent files, limited to the last `FILE-COUNT`.

All you need to do is call `set-dashboard` and pass it a list of `dashboard-item` instances:

```lisp
(in-package :lem-dashboard)

(set-dashboard (list (make-instance 'dashboard-splash
                                    :item-attribute 'document-metadata-attribute
                                    :splash-texts '("Welcome!" "Second splash message!")
                                    :top-margin 4
                                    :bottom-margin 2)
                     (make-instance 'dashboard-working-dir)
                     (make-instance 'dashboard-recent-files 
                                    :file-count 5
                                    :bottom-margin 1)
                     (make-instance 'dashboard-command
                                    :display-text " New Lisp Scratch Buffer (l)"
                                    :action-command 'lem-lisp-mode/internal:lisp-scratch 
                                    :item-attribute 'document-header2-attribute
                                    :bottom-margin 2)))
```

The base class, `dashboard-item`, has the following slots:

- `item-attribute`: The attribute used when drawing the item
- `top-margin`: The amount of vertical space (lines) to apply before the item.
- `bottom-margin`: The amount of vertical space (lines) to apply after the item.
- `action`: Function to execute when `RET` is pressed over this item. Most of the existing `dashboard-item` implementations have good default behavior here.

### Creating your own `dashboard-item`

Creating a custom `dashboard-item` is straightforward; just derive the class and implement the `draw-dashboard-item` method.

You are responsible for the actual insertion of text inside of `draw-dashboard-item`. There is a convenience function, `create-centered-string`, which you can use when inserting text.

As an example, let's make a `dashboard-item` that fetches a random fact from an HTTP API and prints it:

```lisp
(in-package :lem-dashboard)

(defclass dashboard-random-fact (dashboard-item)
  ((fact :initform nil :accessor fact)
   (fetching :initform nil :accessor fetching))
  (:documentation "Creates a dashboard item that displays a random fact."))

(defmethod draw-dashboard-item ((item dashboard-random-fact) point)
  ;; Display fact if exists, or 'loading fact..' while fetching
  (insert-string point
                 (create-centered-string (or (fact item) "Loading fact..."))
                 :attribute (item-attribute item))
  
  ;; If we don't currently have a fact and are not fetching, start fetching fact
  (unless (or (fact item) (fetching item))
    (setf (fetching item) t)
    ;; Start a background thread so we don't block
    (bt2:make-thread
     (lambda ()
       (handler-case
           (let* ((response (dexador:get "https://uselessfacts.jsph.pl/api/v2/facts/random"))
                  (json-data (json:decode-json-from-string response))
                  (fact-text (cdr (assoc :text json-data))))
             ;; Once we receive the fact, we'll set it and redraw the dashboard
             (send-event (lambda () 
                           (setf (fact item) fact-text)
                           (redraw-dashboard))))
         (error (e)
           (send-event (lambda () (message (format nil "Error fetching fact: ~A" e))))))
       :name "random-fact-fetcher"))))
```

Multithreading is overkill here, but it lets us fetch the fact without delaying the startup of the dashboard. Adding `dashboard-random-fact` to the last above, we get:

![New dashboard item](/dashboard-new-item.png)

### Current limitations

- Only vertical stacking is currently supported. If you want to stack multiple elements horizontally, you'll have to make a dashboard item that does so.
- No image support.
