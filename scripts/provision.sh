#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e
# Show progress
set -x

# Package installation
sudo apt-get update
sudo apt-get install -y vim tig python-dev python-pip tmux ctags sudo openssh-server \
                        python-setuptools

# Install config files
ln -sf ${HOME}/Provision/tmux.conf ${HOME}/.tmux.conf

mkdir -p ~/.git/templates/hooks/
ln -sf ${HOME}/Provision/git/gitconfig ${HOME}/.gitconfig
ln -sf ${HOME}/Provision/git/pre-commit ${HOME}/.git/templates/hooks/pre-commit
ln -sf ${HOME}/Provision/git/gitignore ${HOME}/.gitignore

ln -sf ${HOME}/Provision/vim/vimrc_vundle ${HOME}/.vimrc
ln -sf ${HOME}/Provision/bashrc ${HOME}/.bashrc

# Apply bash.bashrc
# source /etc/bash.bashrc

# Vundle installation
if [ ! -d "${HOME}/.vim/bundle/Vundle.vim" ]; then
    mkdir ${HOME}/.vim/bundle/
    git clone https://github.com/gmarik/Vundle.vim.git ${HOME}/.vim/bundle/Vundle.vim
fi

# Install vim plugin (for vundle)
vim +PluginInstall +qall

# Install vim plugin (for pathogen)
# cd ~/.vim
# git submodule init
# git submodule update
