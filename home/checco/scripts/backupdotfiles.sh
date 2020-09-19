#!/bin/bash
shopt -s expand_aliases

alias cfg="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=/" 
cfg add -A ~/scripts 
cfg add -u
cfg diff-index --quiet HEAD || cfg commit -m "Backup some dotfiles" 
cfg push origin master 
