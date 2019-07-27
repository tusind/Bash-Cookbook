#!/bin/bash
FILE_NAME=$1

echo "$FILE_NAME"

# github examples have underscores
# FILE_NAME_CLEAN=${FILE_NAME//_/}

# now, clean out anything that's not alphanumeric or an underscore
FILE_NAME_CLEAN=${FILE_NAME//[^a-zA-Z0-9_.]/}

# next, replace spaces with underscores
FILE_NAME_CLEAN=${FILE_NAME_CLEAN// /_}

echo "$FILE_NAME_CLEAN"

# here you should check to see if the file exists before running the
# command
if [ -f "${FILE_NAME_CLEAN}"  ]; then
    file "${FILE_NAME_CLEAN}";
else
    echo "File not found in the current directory";
fi
