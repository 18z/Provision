Provisioning Work Env.
=========

These are settings that I feel comfortable to work with.

To provision working environment with these settings:

1. Install git, curl, tmux, vim, emacs

```
$ sudo apt-add-repository ppa:ubuntu-elisp/ppa
$ sudo apt-get update; sudo apt-get install git curl tmux emacs-snapshot
```

2. VIM Configurations

```bash
$ curl -o - https://raw.githubusercontent.com/deanboole/Provision/master/scripts/vim-install.sh | sh
```

3. Bash environment Configurations

```bash
$ curl -o - https://raw.githubusercontent.com/deanboole/Provision/master/scripts/bashrc_install.sh | sh
```

4. Git Configurations

```bash
$ curl -o - https://raw.githubusercontent.com/deanboole/Provision/master/scripts/git-install.sh | sh
```

5. Tmux Configurations

```bash
$ curl -o - https://raw.githubusercontent.com/deanboole/Provision/master/scripts/tmux-install.sh | sh
```

6. Emacs Configurations

```bash
$ curl -o - https://raw.githubusercontent.com/deanboole/Provision/master/scripts/emacs-install.sh | sh
```


[download tmux](https://packages.debian.org/wheezy-backports/tmux)
