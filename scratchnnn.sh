#!/usr/bin/env bash

# Created By: Jake@Linux
# Created On: Sat 03 Sep 2022 03:56:04 PM CDT
# Project: bspwm scratchpad

winclass="$(xdotool search --class scratchnnn)";
if [ -z "$winclass" ]; then
    kitty --class scratchnnn -e nnn
else
    if [ ! -f /tmp/scratchnnn ]; then
        touch /tmp/scratchnnn && xdo hide "$winclass"
    elif [ -f /tmp/scratchnnn ]; then
        rm /tmp/scratchnnn && xdo show "$winclass"
    fi
fi
