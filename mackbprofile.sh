#!/bin/bash

# trap ctrl-c and call ctrl_c()
trap ctrl_c INT

function ctrl_c() {
        setxkbmap -option
}

# Run Xmodmap repeatedly using watch
watch -n 10 "xmodmap -pke ~/.Xmodmap_mac"
