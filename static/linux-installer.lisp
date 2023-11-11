(require :uiop)


(defparameter *os-name*
  (string-left-trim
   "ID=" (find "ID="
               (uiop:read-file-lines #P"/etc/os-release" ) :test #'uiop:string-prefix-p)))

(defparameter *deb-package-systems-ids*
  '("ubuntu" "debian" "linuxmint"))

(defparameter *arch-package-system-ids*
  '("arch"))


(defun member-of (os)
  (cond
    ((member os *deb-package-systems-ids* :test #'string=)
     :debian)
    ((member os *arch-package-system-ids* :test #'string=)
     :arch)))


(defun title (title)
  (format t "~% ----- ~a ----- ~%" title))

(defun dot-line ()
  (format t "~% -------------------------- ~%"))

(defun installing-qlot ()
  (when (string=
         (uiop:run-program "which qlot" :output :string  :ignore-error-status t) "")


    (title "Installing qlot...")
    (uiop:run-program "curl -L https://qlot.tech/installer | bash" :output t)
    (dot-line) ))

(defun run-user-command (command &key output)
  (let ((original-user (uiop:getenv "SUDO_USER")))
    (uiop:run-program
     (format nil "su ~a -c '~a'"
             original-user
             command)
     :output output)))

(defun make-lem ()
  (let* ((home (string-trim (format nil "~%")
                (uiop:run-program "getent passwd $SUDO_USER | cut -d: -f6" :output :string)))
         (common-lisp-dir (format nil "~a/~a" home "common-lisp")))

    (title "Creating directories...")
    (run-user-command (format nil  "mkdir -p ~a" common-lisp-dir) :output t)

    (title "Cloning Lem...")
    (unless (uiop:directory-exists-p (pathname (format nil "~a/lem" common-lisp-dir)))
      (run-user-command (format nil "cd ~a && git clone https://github.com/lem-project/lem.git"
                                common-lisp-dir)
                        :output :interactive))

    (title "Running make...")
    (run-user-command (format nil "cd ~a/lem && make ncurses" common-lisp-dir)
                      :output :interactive)
    (when (string=
           (uiop:run-program "which lem" :output :string  :ignore-error-status t) "")

      (title "Adding lem executable to /usr/local/bin")
      (uiop:run-program (format nil "cd ~a/lem && cp lem /usr/local/bin" common-lisp-dir)
                        :output :interactive)
      (dot-line))))


(if (uiop:getenv "SUDO_USER")
  (ecase (member-of *os-name*)
    (:debian
     (title "Installing dependencies...")
     (uiop:run-program "sudo apt install -y curl git sbcl libncurses5-dev build-essential" :output :interactive)
     (dot-line)

     (installing-qlot)
     (make-lem))

    (:arch ))
  (format t "This file need to be run as sudo! ~%"))
