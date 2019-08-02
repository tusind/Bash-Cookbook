#!/bin/bash

# check if you have mpv installed
ALARM_SONG="alarm.mp3"

declare -i H
declare -i M
declare -i CUR_H
declare -i CUR_M
declare -i MIN_LEFT
declare -i HOUR_LEFT

CUR_H=$(date +%H)
CUR_M=$(date +%M)

echo -e "\nlet's set an alarm\n "
echo -e "It is Currently $CUR_H:$CUR_M"
echo -e "What time do you Wake Up?"
read -r H
echo -e "and Minutes?"
read -r M

echo "You Selected "
echo "$H:$M"

if [  "$CUR_H" -lt "$H" ]; then
    HOUR_LEFT=$(("$H" - "$CUR_H"))
    echo "$H - $CUR_H means You Have: $HOUR_LEFT hours still"
elif [ "$CUR_H" -gt "$H" ]; then
    HOUR_LEFT=$(("$CUR_H" - "$H"))
    echo -e  "\n $CUR_H - $H means you have $HOUR_LEFT hours left \n"
elif [ "$CUR_H" == "$H" ]; then
#    HOUR_LEFT=0
    HOUR_LEFT=$H
    echo -e "Taking a nap?\n"
fi

if [ "$CUR_M" -lt "$M" ]; then
    MIN_LEFT=$(("$M" - "$CUR_M"))
    echo -e "$M - $CUR_M you have: $MIN_LEFT minutes still"
elif [ "$CUR_M" -gt "$M" ]; then
    MIN_LEFT=$(("$CUR_M" - "$M"))
    echo -e "$CUR_M - $M you have $MIN_LEFT minutes left \n"
elif [ "$CUR_M" == "$M" ]; then
#    MIN_LEFT=0
    MIN_LEFT=$M
    echo -e "and no minutes\n"
fi

echo -e "Sleeping for $HOUR_LEFT hours and $MIN_LEFT minutes \n"
sleep "${HOUR_LEFT}"\h
sleep "${MIN_LEFT}"\m
mpv $ALARM_SONG
