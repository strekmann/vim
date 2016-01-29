#!/usr/bin/env bash
cd ~/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
curl https://raw.githubusercontent.com/strekmann/vim/master/vimrc -o ~/.vimrc
vim +BundleInstall +BundleClean +qall
