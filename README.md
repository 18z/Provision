Provisioning Work Env.
=========

These are settings that I feel comfortable to work with.

To provision working environment with these settings:

1 Install Git

```bash
$ sudo apt-get update
$ sudo apt-get install git curl
```

2 Clone other settings from github

```bash
$ cd ${HOME}
$ git clone https://github.com/deanboole/Provision
```

3 Start provisioning

```bash
$ cd Provision/scripts
$ bash provision.sh
```

4 Git Configurations

```bash
git config --global user.name "Your Name Here"
git config --global user.email "your_email@example.com"
git config --global core.editor "Your favorite text editor"
git config --global core.excludesfile '~/.gitignore'
```

[download tmux](https://packages.debian.org/wheezy-backports/tmux)
