#!/bin/bash
# changeVolume

# Arbitrary but unique message tag
msgTag="mybrightness"

brightnessctl s "$@" > /dev/null

brightness="$(brightnessctl | grep Current | awk '{print $4}' | cut -c 2- | rev | cut -c 3- | rev)"
 notify-send -t 1000 -a "changeBrightness" -u low -i video-display-brightness-symbolic -h string:x-dunst-stack-tag:$msgTag \
       -h int:value:"$brightness" "Brightness: ${brightness}" 
