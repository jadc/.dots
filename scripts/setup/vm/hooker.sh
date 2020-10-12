#!/bin/sh

if [ "$2" == "prepare" ] && [ "$3" == "begin" ]; then
    "/home/jad/.dots/scripts/setup/vm/prepare.sh"
elif [ "$2" == "release" ] && [ "$3" == "end" ]; then
    "/home/jad/.dots/scripts/setup/vm/release.sh"
fi
