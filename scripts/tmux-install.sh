#!/bin/bash

# Exit immediately if a command exits with a non-zero status
    set -e
# Show progress
    set -x

# Install config files
    ln -sf ${HOME}/Provision/tmux.conf ${HOME}/.tmux.conf
