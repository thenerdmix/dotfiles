#!/bin/bash
echo "tasi"
/home/checco/scripts/backupsns.sh 2> /home/checco/log/errori.log
/home/checco/scripts/backupdotfiles.sh 2> /home/checco/log/errori.log
