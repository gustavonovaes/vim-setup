#!/bin/sh

# Autoload Pathogen
ln -sf ~/.vim/bundle/vim-pathogen/autoload/pathogen.vim ~/.vim/autoload/pathogen.vim

rm -f ~/.vimrc
ln -sf ~/.vim/vimrc ~/.vimrc

cd ~/.vim
git submodule update --init
