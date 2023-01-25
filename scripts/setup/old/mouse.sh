#!/bin/sh
DELAY=0.05
DEVICE_ID=10
FORWARD_KEY=9
BACKWARD_KEY=8

while true; do
    sleep $DELAY
    STATE=$(xinput --query-state $DEVICE_ID) 
    [ ! -z "$(echo $STATE | LC_ALL=C fgrep "$FORWARD_KEY]=down")" ] && xdotool mousedown 1 && xdotool mouseup 1
    [ ! -z "$(echo $STATE | LC_ALL=C fgrep "$BACKWARD_KEY]=down")" ] && xdotool mousedown 3 && xdotool mouseup 3
done
