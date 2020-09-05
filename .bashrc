#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# alias mute="pactl set-sink-mute @DEFAULT_SINK@ 1"
# alias unmute="pactl set-sink-mute @DEFAULT_SINK@ 0"

alias keybindings='less ~/jasu/dotfiles/keybindings.txt'

export PATH=$PATH:/home/singh/.local/bin/


#virtualenv and virtualenvwrapper
export WORKON_HOME=$HOME/.local/.virtualenvs
source $HOME/.local/bin/virtualenvwrapper.sh

