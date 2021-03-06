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
    mkdir -p ~/.git/templates/hooks/
    ln -sf ${HOME}/Provision/git/gitconfig ${HOME}/.gitconfig
    ln -sf ${HOME}/Provision/git/pre-commit ${HOME}/.git/templates/hooks/pre-commit
    ln -sf ${HOME}/Provision/git/gitignore ${HOME}/.gitignore
