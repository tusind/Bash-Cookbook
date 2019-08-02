#!/bin/bash

DIRDATA=data
URLSITE=https://imdb.com

mkdir -pv "${DIRDATA}"
cd "${DIRDATA}" || exit
wget -q -r -l5 -x 5 "${URLSITE}"
grep -r -Po -h '(?<=href=")[^"]*' --exclude=links.csv ./ > links.csv
grep "^http" links.csv > links_filtered.csv
sort -u links_filtered.csv > links_final.csv

ls -r
# rm -rf data links.csv links_filtered.csv
