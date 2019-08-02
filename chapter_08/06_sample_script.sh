#!/bin/bash

FILECONF=07_sampleconfig.conf

typeset -A config
config=(
    [username]="student"
    [password]=""
    [hostname]="ubuntu"
)
while read -r line
do
    if echo "$line" | grep -F = &>/dev/null
    then
	varname=$(echo "$line" | cut -d '=' -f 1)
	config[$varname]=$(echo "$line" | cut -d '=' -f 2-)
    fi
done < "$FILECONF"
echo "${config[username]}"
echo "${config[password]}"
echo "${config[hostname]}"
echo "${config[PROMPT_COMMAND]}"
