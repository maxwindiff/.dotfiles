#!/bin/bash
for i in bash_profile bashrc zshrc aliases gitconfig gitignore_global vimrc gvimrc tmux.conf my.cnf; do
    rm -f ~/.$i
    ln -s $PWD/$i ~/.$i
done
