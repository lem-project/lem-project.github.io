# For now, this only works with SBCL
if [ $(which sbcl) ]
then
    cd /tmp && wget https://lem-project.github.io/lem-page/linux-installer.lisp
    sudo sbcl --noinform  --non-interactive --load "/tmp/linux-installer.lisp" --eval "(exit)"
 else
    error "SBCL not found on the system!"
fi
