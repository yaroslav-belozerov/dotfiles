#!/bin/bash
# changeVolume

# Arbitrary but unique message tag
msgTag="myvolume"

if [[ "$@" == "toggle" ]]; then
	pactl set-sink-mute $(pactl info | grep 'Default Sink' | cut -d' ' -f 3) "$@" > /dev/null
else
	pactl set-sink-volume $(pactl info | grep 'Default Sink' | cut -d' ' -f 3) "$@" > /dev/null
fi


# Query amixer for the current volume and whether or not the speaker is muted
#volume="$(pactl list sinks | grep -A 7 "$(pactl info | grep 'Default Sink' | cut -d' ' -f 3)" | grep Volume | awk '{print $5}')"
#mute="$(pactl list sinks | grep -A 7 "$(pactl info | grep 'Default Sink' | cut -d' ' -f 3)" | grep Mute | awk '{print $2}')"
#artist="$(playerctl metadata | grep artist | cut -d\  -f3- | sed 's/^[[:space:]]*//g')"
#title="$(playerctl metadata | grep title | cut -d\  -f3- | sed 's/^[[:space:]]*//g')"
#if [[ $volume == 0 || "$mute" == "yes" ]]; then
#    # Show the sound muted notification
#    notify-send -t 1000 -a "changeVolume" -u low -i audio-volume-muted -h string:x-dunst-stack-tag:$msgTag "Volume muted" 
#else
#    # Show the volume notification
#    if [[ $title == "" || $artist == "" ]]; then
#        notify-send -t 1000 -a "changeVolume" -u low -i audio-volume-high -h string:x-dunst-stack-tag:$msgTag \
#        -h int:value:"$volume" "Volume: ${volume}"
#    else
#	notify-send -t 1000 -a "changeVolume" -u low -i audio-volume-high -h string:x-dunst-stack-tag:$msgTag \
#        -h int:value:"$volume" "Volume: ${volume}" "${title} - ${artist}"
#    fi
#fi
#
#
