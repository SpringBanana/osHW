#!/bin/bash
pattern="/var/log/*.log"
cat $pattern | wc -l