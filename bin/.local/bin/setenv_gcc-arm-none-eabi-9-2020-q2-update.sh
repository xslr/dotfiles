#!/usr/bin/env sh

# prepend_path()
# {
#   case $PATH in
#     $1:*) echo Nothing to do. \$PATH already contains $1;;  # Do nothing. $PATH already contains the requested path at start.
#     *) echo Adding $1 to PATH. && export PATH=$1:$PATH
#   esac
# }

# prepend_path /home/munu/toolchain/gcc-arm-none-eabi-9-2019-q4-major/bin

export PATH=/home/munu/sdk/toolchain/gcc-arm-none-eabi-9-2020-q2-update/bin:${PATH}
