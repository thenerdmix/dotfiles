#!/bin/bash
filename='/home/checco/log/current_temp.txt'
temp=0
inc=100
while read line; do
temp=$line
done < $filename

if [[ $1 -eq 0 ]]
then
    temp=$((temp-inc))
fi

if [[ $1 -eq 1 ]]
then
    temp=$((temp+inc))
fi
echo "$temp" > $filename
redshift -PO "$temp" 
