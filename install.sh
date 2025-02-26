#!/bin/bash
echo Installing NodeJS...
sudo apt install -y nodejs npm

echo Installing color scheme...
mkdir -p ~/.vim/colors
curl -o molokai.vim https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim

echo Installing Plug plugin manager...
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p ~/intelephense
vi ~/intelephense/license.txt

echo Copying our .vimrc
cp .vimrc ~/.vimrc
echo Copying coc-settings.json
cp ./coc-settings.json ~/.vim/coc-settings.json

vim -c 'PlugInstall|q'
vim -c 'PlugUpdate|q'
vim -c 'CocInstall -sync coc-json coc-html @yaegassy/coc-intelephense|q'
