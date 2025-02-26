#!/bin/bash
echo Installing NodeJS...
sudo apt install -y nodejs

echo Installing color scheme...
mkdir -p ~/.vim/colors
curl -o molokai.vim https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim

echo Installing Plug plugin manager...
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo Copying our .vimrc
cp .vimrc ~/.vimrc
vim -c 'PlugInstall|q'
vim -c 'PlugUpdate|q'
vim -c 'CocInstall -sync coc-json coc-html|q'
