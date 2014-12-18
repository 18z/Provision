#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e
# Show progress
set -x

# Package installation
apt-get update
apt-get install -y vim git tig python-dev python-pip tmux mongodb

# Get and install files
git clone https://github.com/deanboole/provision.git
mv provision/.tmux.conf /root/
mv provision/.gitconfig /etc/gitconfig
mv provision/.vimrc /etc/vim/vimrc
mv provision/.bashrc /etc/bash.bashrc


# pip install virtualenv pymongo flask

