#!/bin/bash

THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $THIS_DIR/set-env.sh
###################################################################################################

ANDROID=$HOME/android-sdk-linux/tools/android

PKG_NUM=$($ANDROID list sdk --all | grep 'Platform-tools, revision 23' | head -1 | sed 's/^[ ]*\([0-9]*\)-.*$/\1/')

echo $PKG_NUM

echo "y" | $ANDROID update sdk -u -a -t $PKG_NUM -s