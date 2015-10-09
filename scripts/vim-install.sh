#!/bin/bash

# Exit immediately if a command exits with a non-zero status
    set -e
# Show progress
    set -x

# Download config files from github
    cd ${HOME}
    git clone https://github.com/deanboole/Provision

# Install config files
    ln -sf ${HOME}/Provision/vim/vimrc ${HOME}/.vimrc

# Install color scheme
    mkdir -p ${HOME}/.vim/colors
    ln -sf ${HOME}/Provision/vim/colors/vividchalk.vim ${HOME}/.vim/colors


# Vundle installation
    if [ ! -d "${HOME}/.vim/bundle/Vundle.vim" ]; then
        mkdir ${HOME}/.vim/bundle/
        git clone https://github.com/gmarik/Vundle.vim.git ${HOME}/.vim/bundle/Vundle.vim
    fi

# Install vim plugin (for vundle)
#    vim +PluginInstall +qall
    echo "Open vim editor and use :PluginInstall to install plugins"
