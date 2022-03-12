#!/bin/sh

# Offline
#/usr/bin/nice -n19 /home/jad/.dots/scripts/setup/mouse.sh &
/usr/lib/mate-polkit/polkit-mate-authentication-agent-1 &
/usr/bin/conky &

# Online
chromium &
while ! timeout 0.2 ping -c 1 -n 8.8.8.8 &> /dev/null; do
    false
done
discord & 
discord-canary & 
