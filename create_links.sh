#!/bin/bash
for i in bash_profile bashrc gitconfig vimrc gvimrc tmux.conf gitignore_global; do
    rm -f ~/.$i
    ln -s $PWD/$i ~/.$i
done
