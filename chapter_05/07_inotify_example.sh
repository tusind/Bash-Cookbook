#!/bin/bash

# check if you have inotify-tools installed

## create directories
if [ ! -d abc ]; then
    mkdir abc;
fi

if [ ! -d oldAbc ]; then
    mkdir oldAbc;
fi

DIR01=abc
DIR02=oldAbc

CDATE=$(date +"%Y-%m-%d-%H:%M")
## write files inside $DIR01
inotifywait -m -q -e close_write --format %f ${DIR01} | while IFS= read -r file;
do
    cp -p ${DIR01}/"$file" ${DIR02}/"${CDATE}"-output.txt
done
