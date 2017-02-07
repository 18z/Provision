#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e
# Show progress
set -x

# Install config files
if [ ! -d "${HOME}/.emacs.d" ]; then
    cd ${HOME}
    git clone https://github.com/18z/emacs_config.git
fi
