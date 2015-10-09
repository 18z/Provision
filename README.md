Provisioning Work Env.
=========

These are settings that I feel comfortable to work with.

To provision working environment with these settings:

1. Install Git and curl

    ```
    You know how to do it. :D
    ```

2. Install VIM settings

    ```bash
    $ curl -o - https://raw.githubusercontent.com/deanboole/Provision/master/scripts/vim-install.sh | sh
    ```

3. Bash environment

    ```bash
    $ curl -o - https://raw.githubusercontent.com/deanboole/Provision/master/scripts/bashrc-install.sh | sh
    ```

4. Git Configurations

    ```bash
    git config --global core.editor "Your favorite text editor"
    git config --global core.excludesfile '~/.gitignore'
    ```

[download tmux](https://packages.debian.org/wheezy-backports/tmux)
