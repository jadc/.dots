#!/bin/sh
TEXT="$(date +"%-I:%M")"
FONT='Google-Sans-Regular'

convert \
    -size 1920x1080 -background black -fill white \
    -font $FONT -pointsize 128 -gravity center \
    "caption:$TEXT" jpeg:- | feh --bg-scale -
