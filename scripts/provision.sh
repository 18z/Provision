#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e
# Show progress
set -x

# Package installation
apt-get update
apt-get install -y vim tig python-dev python-pip tmux mongodb ctags

# Get and install config files
# git clone https://github.com/deanboole/Provision.git

#ln -sf ${HOME}/Provision/.tmux.conf ${HOME}/.tmux.conf
#ln -sf ${HOME}/Provision/.gitconfig /etc/gitconfig
#ln -sf ${HOME}/Provision/.vimrc /etc/vim/vimrc
#ln -sf ${HOME}/Provision/.bashrc /etc/bash.bashrc
#ln -sf ${HOME}/Provision/.gitignore ${HOME}/.gitignore

cp ${HOME}/Provision/.tmux.conf ${HOME}/.tmux.conf
cp ${HOME}/Provision/.gitconfig ${HOME}/.gitconfig
cp ${HOME}/Provision/.vimrc ${HOME}/.vimrc
cp ${HOME}/Provision/.bashrc ${HOME}/.bashrc
cp ${HOME}/Provision/.gitignore ${HOME}/.gitignore

# Apply bash.bashrc
# source /etc/bash.bashrc

# Install vim plugin
vim +PluginInstall +qall

# pip install virtualenv pymongo flask

