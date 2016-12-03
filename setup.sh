#!/bin/sh

rm -f ~/.vimrc
ln -s ~/.vim/vimrc ~/.vimrc

git submodule update --init
