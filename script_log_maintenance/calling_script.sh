#!/bin/bash
current_user=$(whoami)

#calling script to log latest entry:
/home/arunlinux/Desktop/shell/record.sh "${0}" "$current_user"

echo "This script is logged successfully into the logger.txt file "

