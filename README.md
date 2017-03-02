Provisioning Work Env.
=========

These are settings that I feel comfortable to work with.

To provision working environment with these settings:

* Install git, curl, tmux, vim, emacs

```
$ sudo apt-add-repository ppa:ubuntu-elisp/ppa
$ sudo apt-get update; sudo apt-get install git curl tmux emacs-snapshot cscope tig vim
```

* VIM Configurations

```bash
$ curl -o - https://raw.githubusercontent.com/deanboole/Provision/master/scripts/vim-install.sh | sh
```

* Bash environment Configurations

```bash
$ curl -o - https://raw.githubusercontent.com/deanboole/Provision/master/scripts/bashrc_install.sh | sh
```

* Git Configurations

```bash
$ curl -o - https://raw.githubusercontent.com/deanboole/Provision/master/scripts/git-install.sh | sh
```

* Tmux Configurations

```bash
$ curl -o - https://raw.githubusercontent.com/deanboole/Provision/master/scripts/tmux-install.sh | sh
```

* Emacs Configurations

```bash
$ curl -o - https://raw.githubusercontent.com/deanboole/Provision/master/scripts/emacs-install.sh | sh
```


[download tmux](https://packages.debian.org/wheezy-backports/tmux)
