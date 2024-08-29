#!/bin/bash 
script_name=$1
current_user=$2

file=/home/arunlinux/Desktop/shell/logger.txt

total=$(awk -F ":" '{print $NF}' $file| grep "$script_name"|wc -l)

echo "This script has been executed: $total times"

user_no=$(awk -F ":" '{print $NF}' $file|grep -n "$script_name"|tail -n 1|awk -F ":" '{print $(NF-1)}')

last_user=$(awk -F ":" 'NR=='$user_no' {print $(NF-1)}' $file )
echo "Last user to have  logged this script is: $last_user "


echo "$current_user:$script_name" >> $file
echo "File was successfully logged into the ledger"
