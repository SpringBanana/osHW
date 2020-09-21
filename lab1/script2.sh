#!/bin/bash
Ans=""
EOF="q"
while [[ "$Line" != "$EOF" ]]; do
    Ans="$Ans$Line"
    read Line
done
echo "$Ans"