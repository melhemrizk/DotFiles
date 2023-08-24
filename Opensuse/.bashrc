# Sample .bashrc for SuSE Linux
# Copyright (c) SuSE GmbH Nuernberg

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

# Some applications read the EDITOR variable to determine your favourite text
# editor. So uncomment the line below and enter the editor of your choice :-)
#export EDITOR=/usr/bin/vim
#export EDITOR=/usr/bin/mcedit

# For some news readers it makes sense to specify the NEWSSERVER variable here
#export NEWSSERVER=your.news.server

# If you want to use a Palm device with Linux, uncomment the two lines below.
# For some (older) Palm Pilots, you might need to set a lower baud rate
# e.g. 57600 or 38400; lowest is 9600 (very slow!)
#
#export PILOTPORT=/dev/pilot
#export PILOTRATE=115200

test -s ~/.alias && . ~/.alias || true

# Aliases

alias uu='sudo zypper update -y && sudo flatpak update -y'




bold=$(tput bold)
user_color=$(tput setaf 202)
host_color=$(tput setaf 118)
dir_color=$(tput setaf 190)
white=$(tput setaf 255)
purple=$(tput setaf 197)
reset=$(tput sgr0)


PS1="\[${bold}\]\n";             # sets the command prompt to bold
PS1+="\[${user_color}\]\u";             # orange user
PS1+="\[${white}\]@"
PS1+="\[${host_color}\]\h ";        # green-yellow host
PS1+="\[${white}\]in ";
PS1+="\[${dir_color}\]\W ";           # blue directory
PS1+="\[${purple}\]\n$ "
PS1+="\[$(tput sgr0)\]";         # resets the prompt color
export PS1;


# Starship

# Install starship: sudo zypper in starship

# Start starship

eval "$(starship init bash)"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/blackbird/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/blackbird/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/blackbird/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/blackbird/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

