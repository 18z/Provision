#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e
# Show progress
set -x

# Install config files
ln -sf ${HOME}/Provision/bashrc ${HOME}/.bashrc
ln -sf ${HOME}/Provision/bash_profile ${HOME}/.bash_profile
