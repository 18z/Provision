#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e
# Show progress
set -x

# Package installation
#sudo apt-get update
#sudo apt-get install -y vim tig python-dev python-pip tmux mongodb ctags keepassx sudo openssh-server \
#                        ipython ipython-notebook python-pandas python-setuptools

brew install tmux

# Get and install config files
# git clone https://github.com/deanboole/Provision.git

ln -sf ${HOME}/Provision/.tmux.conf ${HOME}/.tmux.conf
ln -sf ${HOME}/Provision/.gitconfig ${HOME}/.gitconfig
ln -sf ${HOME}/Provision/.vimrc_pathogen ${HOME}/.vimrc
ln -sf ${HOME}/Provision/.bashrc ${HOME}/.bashrc
ln -sf ${HOME}/Provision/.gitignore ${HOME}/.gitignore

#cp ${HOME}/Provision/.tmux.conf ${HOME}/.tmux.conf
#cp ${HOME}/Provision/.gitconfig ${HOME}/.gitconfig
#cp ${HOME}/Provision/.vimrc ${HOME}/.vimrc
#cp ${HOME}/Provision/.bashrc ${HOME}/.bashrc
#cp ${HOME}/Provision/.gitignore ${HOME}/.gitignore

# Apply bash.bashrc
# source /etc/bash.bashrc

# Install vim plugin (for vundle)
# vim +PluginInstall +qall

# Install vim plugin (for pathogen)
cd ~/.vim
git submodule init
git submodule update

# pip install virtualenv pymongo flask

