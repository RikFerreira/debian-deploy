#  _               _                           __ _ _
# | |__   __ _ ___| |__       _ __  _ __ ___  / _(_) | ___
# | '_ \ / _` / __| '_ \     | '_ \| '__/ _ \| |_| | |/ _ \
# | |_) | (_| \__ \ | | |    | |_) | | | (_) |  _| | |  __/
# |_.__/ \__,_|___/_| |_|____| .__/|_|  \___/|_| |_|_|\___|
#                      |_____|_|

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH=$PATH:$HOME/.local/appimages:$HOME/bin:$HOME/.local/bin
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"
export BIB=/mnt/HDD/STORAGE/library

# XDG directories
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"

# sysmonitor &
# censo &

[[ "$(who | awk '{print $2}')" = "tty1" ]] && pgrep ^dwm$ || startx
