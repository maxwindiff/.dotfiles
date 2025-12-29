#!/bin/bash
for i in zshrc gitconfig gitignore_global vimrc tmux.conf my.cnf; do
    rm -f ~/.$i
    ln -s $PWD/$i ~/.$i
done
