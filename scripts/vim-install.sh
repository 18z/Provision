#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e
# Show progress
set -x


# Install config files

ln -sf ${HOME}/Provision/vim/vimrc ${HOME}/.vimrc

mkdir -p ${HOME}/.vim/colors
ln -sf ${HOME}/Provision/vim/colors/vividchalk.vim ${HOME}/.vim/colors


# Vundle installation
if [ ! -d "${HOME}/.vim/bundle/Vundle.vim" ]; then
    mkdir ${HOME}/.vim/bundle/
    git clone https://github.com/gmarik/Vundle.vim.git ${HOME}/.vim/bundle/Vundle.vim
fi

# Install vim plugin (for vundle)
vim +PluginInstall +qall
