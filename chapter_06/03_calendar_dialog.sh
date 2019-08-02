#!/bin/bash

## check if dialog package is installed
TODAY=$(date +"%-d %-m %Y")
DAY=$(date +"%-d")
MONTH=$(date +"%-m")
YEAR=$(date +"%Y")

dialog --calendar "Select a date... " 0 0 "${DAY}" "${MONTH}" "${YEAR}"

clear
VAL=$?
echo $VAL

echo "${TODAY}"
