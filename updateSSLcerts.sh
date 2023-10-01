#!/bin/bash

# ======================================== #
# Downloads SSL certificates
# from mozilla.org and applies them
# ======================================== #

# Download
wget https://hg.mozilla.org/releases/mozilla-beta/raw-file/tip/security/nss/lib/ckfw/builtins/certdata.txt

# Apply
make-ca -C certdata.txt

# Cleanup
rm -iv certdata.txt
