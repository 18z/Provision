#!/bin/bash

# Exit immediately if a command exits with a non-zero status
    set -e
# Show progress
    set -x

# Install config files
    mkdir -p ~/.git/templates/hooks/
    ln -sf ${HOME}/Provision/git/gitconfig ${HOME}/.gitconfig
    ln -sf ${HOME}/Provision/git/pre-commit ${HOME}/.git/templates/hooks/pre-commit
    ln -sf ${HOME}/Provision/git/gitignore ${HOME}/.gitignore
