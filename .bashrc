#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias ls='ls --color=auto'
alias ll='ls -la'
alias la='ls -a'
PS1='[\u@\h \W]\$ '


if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export EDITOR="vim"
