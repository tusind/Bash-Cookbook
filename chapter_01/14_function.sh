#!/bin/bash
# This is a global variable
FILES=( "file1" "file2" "file3" )

function create_file() {
    # First parameter
    local FNAME="${1}"
    # Second parameter
    local PERMISSIONS="${2}"
    touch "${FNAME}"
    chmod "${PERMISSIONS}" "${FNAME}"
    ls -l "${FNAME}"
}

for ELEMENT in "${FILES[@]}" ;
do
    create_file "${ELEMENT}" "a+x"
done

echo "Created all the files with a function!"
exit 0
