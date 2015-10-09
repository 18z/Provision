#!/bin/bash

# Exit immediately if a command exits with a non-zero status
    set -e
# Show progress
    set -x

# Download config files from github
    if [ ! -d "${HOME}/Provision" ]; then
        cd ${HOME}
        git clone https://github.com/deanboole/Provision
    fi

# Install config files
    ln -sf ${HOME}/Provision/tmux.conf ${HOME}/.tmux.conf
