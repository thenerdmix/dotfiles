#!/bin/bash
echo "tasi"
/home/checco/scripts/backupsns.sh 2>>/home/checco/log/sns_error.log >>/home/checco/log/sns.log
/home/checco/scripts/backupdotfiles.sh 2>> /home/checco/log/dot_error.log >>/home/checco/log/dot.log
