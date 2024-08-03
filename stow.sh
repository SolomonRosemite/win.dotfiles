#!/bin/bash
WIN_STARTUP_SOURCE="startup"

WIN_USER_PATH=$(readlink -e /mnt/c/Users/{solomon,Jesse}/ | head -1)
WIN_STARTUP_TARGET="$WIN_USER_PATH/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup/"

stow --no-folding "$WIN_STARTUP_SOURCE" -t "$WIN_STARTUP_TARGET"
stow --no-folding */
