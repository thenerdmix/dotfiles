#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls --color=auto -l'
alias yoump3='youtube-dl -x --audio-format mp3'
alias meteo='curl wttr.in/pisa'

#custom alias to manage the dotfiles git repo
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=/'

PS1='[\u@\h \W]\$ '

#recording last directory
export PROMPT_COMMAND="pwd > ~/.last_dir"
