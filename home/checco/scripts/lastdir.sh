#!/bin/bash
LASTDIR=$(cat ~/.last_dir)
urxvt -cd $LASTDIR -e zsh
