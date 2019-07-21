#!/bin/bash

function create_file() {
    local FNAME=$1
    touch "${FNAME}"
    # If output doesn't return a value - file is missing
    ls "${FNAME}"
}

function delete_file() {
    local FNAME=$1
    rm "${FNAME}"
    # If output doesn't return a value - file is missing
    ls "${FNAME}"
}
