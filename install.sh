#!/bin/bash

echo Installing color scheme...
mkdir -p ~/.vim/colors
curl -o molokai.vim https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim

echo Installing Plug plugin manager...
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo Copying our .vimrc
cp .vimrc ~/.vimrc
