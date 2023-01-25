#!/bin/sh
FORWARD_KEY=9
BACKWARD_KEY=8
#
SPAMLEFT=false
SPAMRIGHT=false

xinput test-xi2 --root 2 | tee >(gawk '/RawButton/ {getline; getline; print $2; fflush()}' | while read -r btn; do while [ "$btn" = "$FORWARD_KEY" ]; do echo $RANDOM; done; done) >> /dev/null

# while [ "$btn" = $FORWARD_KEY ]; do echo $RANDOM; done;
