#!/bin/sh

# Autoload Pathogen
ls -s ~/.vim/bundle/vim-pathogen/autoload/pathogen.vim ~/.vim/autoload/pathogen.vim

rm -f ~/.vimrc
ln -s ~/.vim/vimrc ~/.vimrc

git submodule update --init
