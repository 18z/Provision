#!/bin/bash

# Exit immediately if a command exits with a non-zero status
    set -e
# Show progress
    set -x

# Download config files from github
    cd ${HOME}
    git clone https://github.com/deanboole/Provision

# Install config files
    ln -sf ${HOME}/Provision/bashrc ${HOME}/.bashrc
    ln -sf ${HOME}/Provision/bash_profile ${HOME}/.bash_profile
