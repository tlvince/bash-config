# Title:    .bashrc
# Author:   Tom Vincent
# Created:  < 2009-05-07    # When I switched to Arch Linux
#
# Run "source ~/.bashrc" or ". .bashrc" (or logout) to apply changes
# Run "env" to display all environment variables in use
# Run "cat /etc/issue" to display Linux distro info

[[ -f ~/.bash_alias ]] && . ~/.bash_alias
[[ -f ~/.bash_export ]] && . ~/.bash_export

# Load some library functions
source "$XDG_CONFIG_HOME/bash/lib/libLoader.sh"
LIBS=(extractArchive spellChecker dictionary calculator upDirectory \
      locateWorkingDirectory pkgtools)
libLoader ${LIBS[@]}

#-----------------------------------------------------------------------
# General
#-----------------------------------------------------------------------
# Check for an interactive session
[[ -z "$PS1" ]] && return

PS1='[\u@\h \W]\$ '

# Make sure completion is on
[[ -f /etc/bash_completion ]] && source /etc/bash_completion

# Autojump
[[ -f /etc/profile.d/autojump.bash ]] && source /etc/profile.d/autojump.bash

# Add completion when sudo
complete -cf sudo

# Prevent wrapping problems after window resizing
shopt -s checkwinsize

# Append to the history file, don't overwrite it
shopt -s histappend

