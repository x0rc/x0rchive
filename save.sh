
#!/bin/bash
#
# x0rchive.sh  Author: x0r
# git clone https://github.com/x0rc/x0rchive
# Usage: ./save.sh
#
# This script will save the last used command
# in a Markdown table.

cmd="| $(cat ~/.zsh_history | tail -n 2 | cut -b 16- | head -n1)"
time="| $(date +"%T")"
date="| $(date +"%D")"
description="$*"

    while [ -z $description ]; do
        description="no desc provided"
        done
    

echo "$cmd $time $date | $description |" >> /home/x0r/Desktop/cmds.md
