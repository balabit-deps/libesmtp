#!/bin/sh
#
# This script is needed to setup build environment from checked out
# source tree.
#
# bootstrap syslog-ng itself
libtoolize --force --copy
aclocal -I m4 --install
sed -i -e 's/PKG_PROG_PKG_CONFIG(\[0\.16\])/PKG_PROG_PKG_CONFIG([0.14])/g' aclocal.m4

autoheader
automake --foreign --add-missing --copy
autoconf
