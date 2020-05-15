#!/bin/sh

FORMAT_TIME='%I:%M %P'
FORMAT_DATE='%a, %b %d'

# time
if [ $1 ]; then
    $SCRIPTS/notify.sh "$(date +"$FORMAT_DATE")"
else
    $SCRIPTS/notify.sh "$(date +"$FORMAT_TIME")"
fi
