/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=/ add -A ~/scripts 
/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=/ diff-index --quiet HEAD || /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=/ commit -m "Backup some dotfiles" 
/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=/ push origin master 
