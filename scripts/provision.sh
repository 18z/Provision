#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e
# Show progress
set -x

# Package installation
apt-get update
apt-get install -y vim tig python-dev python-pip tmux mongodb

# Get and install files
git clone https://github.com/deanboole/provision.git
mv ../.tmux.conf ${HOME}
mv ../.gitconfig /etc/gitconfig
mv ../.vimrc /etc/vim/vimrc
mv ../.bashrc /etc/bash.bashrc

# Install vim plugin
vim +PluginInstall +qall

# pip install virtualenv pymongo flask

