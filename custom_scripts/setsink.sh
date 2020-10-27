#! /bin/bash

# script to choose the desired audio output sink from dmenu

# display the names of the current sinks in dmenu
sink=$(pactl list sinks | grep 'Name' | cut --complement -c 1-7 | dmenu -i)

# set the chosen sink as the default sink
pactl set-default-sink $sink && notify-send "Default Audio Sink changed to:" $sink
