#!/usr/bin/env bash
cd ~/

if [ ! -e .config/base16-shell ]; then
    git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
fi

if [ ! -e .vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

if [ ! -L .vimrc ]; then
    curl https://raw.githubusercontent.com/strekmann/vim/master/vimrc -o ~/.vimrc
fi

vim +BundleInstall +BundleClean +qall

~/.vim/bundle/fonts/install.sh

cat << EOF
Now, make sure to add these lines to your .zshrc or .bashrc:

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "\$PS1" ] && [ -s \$BASE16_SHELL/profile_helper.sh ] && eval "\$(\$BASE16_SHELL/profile_helper.sh)"

And then run base16_* (tab completion should work) to set color scheme
EOF
