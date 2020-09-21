#!/bin/bash
touch info.log
exec 3>info.log
if [[ -e /var/log/anaconda/syslog && -r /var/log/anaconda/syslog ]]; then
    while read line; do
        input=$( echo '$line" | cut -d ' ' -f 2 )
        if [[ $input == "INFO" ]]; then
            echo $line >&3
        fi
    done < /var/log/anaconda/syslog
fi