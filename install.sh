#!/bin/bash

sudo cp powerline-fonts /usr/share/fonts/powerline-fonts
fc-cache -fv

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp vimrc ~/.vimrc

exit 0
