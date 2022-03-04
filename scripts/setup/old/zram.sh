#!/bin/bash
cores=$(nproc --all)

modprobe zram num_devices=$cores

echo lz4 > /sys/block/zram0/comp_algorithm

totalmem=$(free | grep -e "^Mem:" | awk '{print $2}')
mem=$(( $totalmem * 1024 ))

for core in $( seq 0 $(($cores-1)) )
do
    echo $mem > /sys/block/zram$core/disksize
    mkswap /dev/zram$core
    swapon -p 5 /dev/zram$core
done
