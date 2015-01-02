Provisioning Mac OS X
=========

These are settings that I feel comfortable to work with.

To provision working environment with these settings:

1. Install homebrew

		$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

2. Install Git, curl and tig

		$ brew install git curl tig

3. Clone vim env settings from github

		$ git clone https://github.com/deanboole/dean.vim.git ~/.vim

		# If you prefer to use vundle then,
		# $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

4. Clone other settings from github

		$ cd ${HOME}
		$ git clone https://github.com/deanboole/Provision

5. Checkout to mac os x branch and Start provisioning

		$ cd Provision
		$ git checkout macosx

		$ cd scripts
		$ sh provision.sh

6. Git Configurations

    ```
    git config --global user.name "Your Name Here"
    git config --global user.email "your_email@example.com"
    git config --global core.editor "Your favorite text editor"
    git config --global core.excludesfile '~/.gitignore'
    ```
