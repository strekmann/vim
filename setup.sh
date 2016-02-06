#!/usr/bin/env bash
cd ~/

if [ ! -e .vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

if [ ! -L .vimrc ]; then
    curl https://raw.githubusercontent.com/strekmann/vim/master/vimrc -o ~/.vimrc
fi

vim +BundleInstall +BundleClean +qall

~/.vim/bundle/fonts/install.sh
