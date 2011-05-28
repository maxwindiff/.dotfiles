#!/bin/bash
for i in bash_profile bashrc gitconfig nethackrc vimrc; do
    rm -f ~/.$i
    ln -s $PWD/$i ~/.$i
done
