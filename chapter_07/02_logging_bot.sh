#!/bin/bash
set -x
## check if nc is installed

NICK="your_nick_here"
CHANNEL=testchannel
SERVER=irc.freenode.net
CONFIG=/tmp/irclog
[ -n "$1" ] && CHANNEL=$1
[ -n "$2" ] && SERVER=$2
CONFIG="${CONFIG}_${CHANNEL}"
echo "NICK ${NICK}" > "${CONFIG}"
echo "USER $NICK +i * :$0" >> "${CONFIG}"
echo "JOIN #$CHANNEL" >> "${CONFIG}"
trap 'rm -f "${CONFIG}";exit 0' INT TERM EXIT

tail -f "$CONFIG" | nc "$SERVER" 6667 | while read -r MESSAGE

do
    case "$MESSAGE" in
	PING*) echo "PONG${MESSAGE#PING}" >> "$CONFIG";;
	*QUIT*) ;;
	*PART*) ;;
	*JOIN*) ;;
	*NICK*) ;;
	*PRIVMSG*) echo "${MESSAGE}" | sed -nr "s/^:([^!]+).*PRIVMSG[^:]+:(.*)/[$(date '+%R')] \1> \2/p";;
	*) echo "${MESSAGE}";;
    esac
done
