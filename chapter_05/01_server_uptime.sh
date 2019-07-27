#!/bin/bash

SERVERUPTIME=$(uptime | awk '{print $3,$4}'| sed 's/,//');

if [[ -n "$SERVERUPTIME" ]]; then
    echo "uptime: $SERVERUPTIME"
else
    echo "Dead Host"
fi
