#!/bin/bash
if [[ $PWD == $HOME ]]; then
    echo $PWD
    exit 0
else
    echo "Not a home directory"
    exit 1
fi