#!/bin/bash

# chmod +x to this file, prevent loading by dash by running script this way:
# ./mackbprofile.sh

# trap ctrl-c and call ctrl_c()
trap ctrl_c INT

function ctrl_c() {
        setxkbmap -option
        echo 'Default KB Loaded'
}

# Run Xmodmap repeatedly using watch every 10 seconds. Useful if it falls asleep.
watch -n 10 "xmodmap -pke ~/.Xmodmap_mac"
