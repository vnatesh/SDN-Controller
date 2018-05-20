#!/bin/bash

# Run as root, if not already doing so
if [ "`id -u`" -ne 0 ]; then
    sudo $0 $*
    exit $?
fi

rm /usr/local/bin/mn
rm /usr/local/lib/python2.7/dist-packages/mininet-2.1.0p2-py2.7.egg
apt-get install -y mininet
PATCH=`pwd`/mininet.patch
echo $PATCH
cd /usr/share/pyshared/mininet/
patch -p1 < $PATCH
