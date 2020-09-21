#!/bin/bash
if [[ $PWD == $HOME ]]; then
    echo $PWD
else
    echo "Not a home directory"
fi