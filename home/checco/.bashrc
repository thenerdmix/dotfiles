#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls --color=auto -l'

#custom alias to manage the dotfiles git repo
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=/'

PS1='[\u@\h \W]\$ '
