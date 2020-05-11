
#! /usr/bin/bash

# Script to set wallpaper 

# To Do: 1) give option to create new themes and give option
# to directly send an image to a particular theme
# 2) give option to view themes and ship with some themes by 
# default


# path for the symbolic link file pointing towards the 
# chosen wallpaper
wall="$XDG_DATA_HOME/wall"


# [] is a shorthand for the test command 
# -f argument is used to test if the given argument is 
# actually a file or not

# readlink -f command is used to get the path of the input
# file, the readlink command ensures that we get the path of
# original file even if we pass on a symbolic link as the 
# argument, the -f tells readlonk to go recursively following
# the links till no more links are obtained & original file is reached

[ -f "$1" ] && ln -sf "$(readlink -f "$1")" "$wall" && notify-send -i "$wall" -t 3000 "Wallpaper Changed"

# command to print directories from the wallpapers directory
# to list the different themes
[ "$1" = "themes" ] && ls $XDG_DATA_HOME/wallpapers


# set the wallpaper using xwallpaper
xwallpaper --zoom "$wall"
