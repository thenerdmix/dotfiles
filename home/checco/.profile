alias ls='ls --color=auto'
alias ll='ls --color=auto -l'
alias yoump3='youtube-dl -x --audio-format mp3'
alias meteo='curl wttr.in/pisa'
alias glog='git log --all --oneline --graph'

#custom alias to manage the dotfiles git repo
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=/'

#recording last directory
export PROMPT_COMMAND="pwd > ~/.last_dir"

# defining path variables
PATH=$PATH:~/scripts
