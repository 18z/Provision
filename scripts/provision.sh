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

mv ../.tmux.conf ${HOME}
mv ../.gitconfig /etc/gitconfig
mv ../.vimrc /etc/vim/vimrc
mv ../.bashrc /etc/bash.bashrc
mv ../.gitignore ~/.gitignore

# Apply bash.bashrc
# source /etc/bash.bashrc

# Install vim plugin
vim +PluginInstall +qall

# pip install virtualenv pymongo flask

