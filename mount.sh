#!/bin/bash

# ======================================== #
# Mounts filesystem and 
# binds pseudo-filesystems
#               WARNING:
#    1) Change sdXN to fit your partition.
#    2) Make sure ABYSS variable is set!
#        for example add to .bashrc
#        "export ABYSS=/mnt/abyss"
# ======================================== #

mount /dev/sdX2 $ABYSS
mount /dev/sdX3 $ABYSS/home
mount /dev/sdX1 $ABYSS/boot

mount -v --bind /dev $ABYSS/dev
mount -v --bind /dev/pts $ABYSS/dev/pts
mount -vt proc proc $ABYSS/proc
mount -vt sysfs sysfs $ABYSS/sys
mount -vt tmpfs tmpfs $ABYSS/run

if [ -h $ABYSS/dev/shm ]; then
  mkdir -pv $ABYSS/$(readlink $ABYSS/dev/shm)
else
  mount -t tmpfs -o nosuid,nodev tmpfs $ABYSS/dev/shm
fi

