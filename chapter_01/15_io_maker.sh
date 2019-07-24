#!/bin/bash

# You may need to include the path as it is relative
# source library.sh
source ./16_library.sh

FNAME="my_test_file.txt"
create_file "${FNAME}"
delete_file "${FNAME}"

exit 0
