#1/bin/bash
touch full.log
exec 3>full.log
if [[ -e /var/log/anaconda/X.log && -r /var/log/anaconda/X.log ]]; then
    while read line; do
        if [[ $line == *"(WW)"* ]]; then
            output="${line/(WW)/Warning:}"
            echo $output >&3
        fi
        if [[ $line == *"(II)"* ]]; then
            output="${line/(II)/Information:}"
            echo $output >&3
        fi
    done < /var/log/anaconda/X.log
fi