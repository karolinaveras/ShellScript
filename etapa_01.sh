#!/bin/bash

MY_DOMAIN="mydomain.local"

GET_ARCH=$(getconf LONG_BIT)

PBIS_OPEN="https://github.com/BeyondTrust/pbis-open/releases/download/8.7.0/pbis-open-8.7.0.478.linux.x86_64.deb.sh"
PBIS_FILE="https://github.com/BeyondTrust/pbis-open/releases/download/8.7.0/pbis-open-8.7.0.478.linux.x86.deb.sh"

if [ "$GET_ARCH" -eq "32" ]; then
   PBIS_OPEN="https://github.com/BeyondTrust/pbis-open/releases/download/8.5.2"
   PBIS_FILE="pbis-open-8.5.2.265.linux.x86.deb.sh"
fi

cd /tmp/
wget -c $PBIS_OPEN/${PBIS_FILE}
chmod +x $PBIS_FILE
./$PBIS_FILE
rm -f $PBIS_FILE
