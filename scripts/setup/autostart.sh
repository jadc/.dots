#!/bin/sh

# Offline
#/usr/bin/nice -n19 /home/jad/.dots/scripts/setup/mouse.sh &
/usr/lib/mate-polkit/polkit-mate-authentication-agent-1 &
/usr/bin/udiskie -NT &
/usr/bin/conky &

/usr/bin/pipewire &
/usr/bin/pipewire-pulse &
/usr/bin/pipewire-media-session &
#/usr/bin/pactl set-default-sink 45

# Online
chromium &
while ! timeout 0.2 ping -c 1 -n 8.8.8.8 &> /dev/null; do
    false
done
discord & 
discord-canary & 
webcord &
