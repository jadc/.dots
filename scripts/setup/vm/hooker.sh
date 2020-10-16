#!/bin/sh

if [ "$2" == "prepare" ] && [ "$3" == "begin" ]; then
    su -l jad -c "DISPLAY=:0 /home/jad/.dots/scripts/setup/vm/prepare.sh"
elif [ "$2" == "release" ] && [ "$3" == "end" ]; then
    su -l jad -c "DISPLAY=:0 /home/jad/.dots/scripts/setup/vm/release.sh"
fi
