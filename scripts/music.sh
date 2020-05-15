#!/bin/sh

if ! pgrep -x "mpd" > /dev/null
then
    mpd &
fi

$TERMINAL -e ncmpcpp
