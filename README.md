Provisioning Debian
=========

These are setups that I feel comfortable to work with.

To provision working environment with these setups

1. Install Git

        $ apt-get update
        $ apt-get install git curl
        
2. Install vundle

        $ git clone https://github.com/gmarik/vundle.git /etc/vim/bundle/vundle
        
3. Clone settings from github

        $ cd ${HOME}
        $ git clone https://github.com/deanboole/Provision
        
4. Start provisioning

        $ cd Provision/scripts
        $ sh provision.sh

5. Git Configurations

    ```
    git config --global user.name "Your Name Here"
    git config --global user.email "your_email@example.com"
    git config --global core.editor "Your favorite text editor"
    git config --global core.excludesfile '~/.gitignore'
    ```


[download tmux](https://packages.debian.org/wheezy-backports/tmux)
