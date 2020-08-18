#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# alias mute="pactl set-sink-mute @DEFAULT_SINK@ 1"
# alias unmute="pactl set-sink-mute @DEFAULT_SINK@ 0"

alias keybindings='less ~/dwm-6.2/keybindings.txt'
