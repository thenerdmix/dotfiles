#!/bin/bash
echo `date` >>/home/checco/log/sns_error.log
echo `date` >>/home/checco/log/sns.log
/home/checco/scripts/backupsns.sh 2>>/home/checco/log/sns_error.log >>/home/checco/log/sns.log

echo `date` >>/home/checco/log/dot_error.log
echo `date` >>/home/checco/log/dot.log
/bin/su -s /bin/bash -c '/home/checco/scripts/backupdotfiles.sh' checco 2>> /home/checco/log/dot_error.log >>/home/checco/log/dot.log
