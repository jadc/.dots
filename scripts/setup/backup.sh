#!/bin/sh
DRIVE='/dev/sdc2'
MOUNT_POINT='/media/backup'

if ! grep -qs "$MOUNT_POINT" /proc/mounts; then
    echo "Mounting $DRIVE -> $MOUNT_POINT"
    sudo mkdir -p "$MOUNT_POINT"
    sudo /usr/bin/mount $DRIVE /media/backup
fi

sudo /usr/bin/rsync -avhP --no-compress "/drives/data/archive" "$MOUNT_POINT" --delete && echo 'Unmounting in 10 seconds' && sleep 10 && sudo umount $DRIVE
