#!/bin/sh
killall -q polybar
echo "---" | tee -a /tmp/polybar.log
polybar -r bar >>/tmp/polybar.log 2>&1 &
