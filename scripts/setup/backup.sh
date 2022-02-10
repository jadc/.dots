#!/bin/sh
DRIVE='/dev/sdd2'
MOUNT_POINT='/media/backup'

if ! grep -qs "$MOUNT_POINT" /proc/mounts; then
    echo "Mounting $DRIVE -> $MOUNT_POINT"
    sudo /usr/bin/mount $DRIVE /media/backup
fi

/usr/bin/rsync -avhP --no-compress "/drives/data/archive" "$MOUNT_POINT"
