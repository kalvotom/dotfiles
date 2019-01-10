#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source /usr/share/git/completion/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export WINEARCH=win32

export EDITOR=vim

source ~/.rails_dev

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias julia='julia --color=yes'

reset=$(tput sgr0)
red=$(tput setaf 1)
blue=$(tput setaf 4)
green=$(tput setaf 2)

PS1='[\[$blue\]\u\[$reset\]@\[$green\]\h\[$reset\] \W$(__git_ps1 " (%s)")]\$ '

#export ALSA_CARD=PCH
#export PATH="$PATH:$HOME/bin"
#source .profile

export ALSA_CARD=PCH
export PATH="$PATH:$HOME/bin:$HOME/.local/bin"

if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"


