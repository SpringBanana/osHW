#!/bin/bash
touch emails.lst
exec 3>emails.lst
email_regex="[a-zA-Z0-9._]\+@[a-zA-Z0-9.]\+\.[a-zA-Z0-9.]\+"
out=$(grep -Rohs $email_regex /etc* | grep -o $email_regex)
echo $out | sed 's/ /, /g' >&3