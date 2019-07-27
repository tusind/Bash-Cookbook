#!/bin/bash

MYSQLPASS="${1}"

echo "create testdb datebase " "${MYSQLPASS}"
mysql -u root -p "${MYSQLPASS}" << MY_QUERY
create database testdb;
MY_QUERY
