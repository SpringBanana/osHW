#!/bin/bash
CurrentPath="/home/user/lab1"
if [[ "$PWD" == "$CurrentPath" ]]; then
   echo "$CurrentPath"
   exit 0
else
   echo "Incorrect path"
   exit 1
fi