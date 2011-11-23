#! /bin/sh -e

checkout_dir=`pwd`

(
    cd ~
    if [ -e .zshrc ] 
    then
	mv .zshrc .zshrc.old
    fi

    if [ -e .emacs ] 
    then
	mv .emacs .emacs.old
    fi

    if [ -e .emacs.d ]
    then
	mv .emacs.d .emacs.d.old
    fi

    ln -s $checkout_dir/.zshrc
    ln -s $checkout_dir/.emacs
    mkdir -p .emacs.d
    cd .emacs.d
    ln -s $checkout_dir/site-lisp
)