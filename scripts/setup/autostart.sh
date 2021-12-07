#!/bin/sh

# Offline
#/usr/bin/polkit-dumb-agent &
/usr/lib/mate-polkit/polkit-mate-authentication-agent-1 &
#scream -i virbr0 &
#sleep 5 && polybar 2nd

# Online
chromium &
while ! timeout 0.2 ping -c 1 -n 8.8.8.8 &> /dev/null; do
    false
done
discord & 
