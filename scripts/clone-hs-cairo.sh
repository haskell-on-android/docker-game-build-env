#!/bin/bash

THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $THIS_DIR/set-env.sh
###################################################################################################

git clone https://github.com/sseefried/hs-cairo.git
cd hs-cairo
git checkout 922c6fab2d632c220ebd3f07b737e75537bfda70 2>&1