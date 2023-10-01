#!/bin/bash

# ======================================== #
# Chroots into system. Make sure you
# mounted everything before running
# this script
#               WARNING:
#    Make sure ABYSS variable is set!
#      for example add to .bashrc
#        "export ABYSS=/mnt/abyss"
# ======================================== #

chroot "$ABYSS" /usr/bin/env -i   \
    HOME=/root                  \
    TERM="$TERM"                \
    PS1='(lfs chroot) \u:\w\$ ' \
    PATH=/usr/bin:/usr/sbin     \
    /bin/bash --login
