#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e
# Show progress
set -x

# Install config files
if [ ! -d "${HOME}/radare2" ]; then
    cd ${HOME}
    git clone https://github.com/radare/radare2.git ~/radare2
fi

cd ${HOME}/radare2
sys/install.sh
