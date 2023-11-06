# For now, this only works with SBCL
if [ $(which sbcl) ]
then
    sbcl --noinform  --non-interactive --load "linux-installer.lisp" --eval "(exit)"
 else
    error "SBCL not found on the system!"
fi
