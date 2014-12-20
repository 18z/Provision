Provisioning Debian
=========

These are setups that I feel comfortable to work with.

To provision working environment with these setups

1. Install Git

        $ apt-get update
        $ apt-get install git curl
        
2. Install vundle

        $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
        
3. Clone settings from github

        $ git clone https://github.com/deanboole/provision
        
4. Start provisioning

        $ sh Provision/scripts/provision.sh


