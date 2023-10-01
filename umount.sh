#!/bin/bash

# ======================================== #
# Unmounts filesystem and pseudo-filesystems
#               WARNING:
#    Make sure ABYSS variable is set!
#      for example add to .bashrc
#      "export ABYSS=/mnt/abyss"
# ======================================== #

mountpoint -q $ABYSS/dev/shm && umount $ABYSS/dev/shm
umount $ABYSS/dev/pts
umount $ABYSS/{sys,proc,run,dev}
umount -R $ABYSS
