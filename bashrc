export PS1="\[\e[00;37m\][\[\e[0m\]\[\e[00;33m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[00;32m\]\H\[\e[0m\]\[\e[00;37m\]][\W][\[\e[0m\]\[\e[00;35m\]\$?\[\e[0m\]\[\e[00;37m\]] \\$ \[\e[0m\]"

export EDITOR="vim"
export LC_ALL=en_US.UTF-8

# MAC ONLY
export CLICOLOR=1

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

alias checkwanip='curl ifconfig.me/ip'
# MAC ONLY
# You can command : echo has('conceal') in your vim, if it return 0.
# That's why you can't see the indent line.
# If so you can brew a new version vim which support conceal or patch this feature.
#alias vim='/usr/local/Cellar/vim/7.4.865/bin/vim'

alias pp="column -s ';' -t"
alias ppp="column -s ':' -t"
alias cdp="cd $OLDPWD"
alias rmpyc="find -name "*.pyc" -exec rm {} \;"
alias s="source bin/activate"
alias d="deactivate"
alias jadx="/home/dio/Documents/re-env/jadx/build/jadx/bin/jadx-gui"
alias as="/opt/android-studio/bin/studio.sh"

function backup()
{
    cp $1 $1.bak
}

function extract()      # Handy Extract Program
{
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1     ;;
            *.tar.gz)    tar xvzf $1     ;;
            *.tar.xz)    tar Jxvf $1     ;;
            *.bz2)       bunzip2 $1      ;;
            *.rar)       unrar x $1      ;;
            *.gz)        gunzip $1       ;;
            *.tar)       tar xvf $1      ;;
            *.tbz2)      tar xvjf $1     ;;
            *.tgz)       tar xvzf $1     ;;
            *.zip)       unzip $1        ;;
            *.apk)       unzip $1 -d dex ;;
            *.Z)         uncompress $1   ;;
            *.7z)        7z x $1         ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}

