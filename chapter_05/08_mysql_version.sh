#!/bin/bash

MYSQLPASS="${1}"

echo "check mysql version " "${MYSQLPASS}"
mysql -u root -p "${MYSQLPASS}" << MY_QUERY
SELECT VERSION();
MY_QUERY
