# Title:    .bashrc
# Author:   Tom Vincent
# Created:  < 2009-05-07    # When I switched to Arch Linux
#
# Run "source ~/.bashrc" or ". .bashrc" (or logout) to apply changes
# Run "env" to display all environment variables in use
# Run "cat /etc/issue" to display Linux distro info

. ~/.bash_alias
. ~/.bash_export

# Load some library functions
source ~/src/bash/lib/libLoader.sh
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
if [[ -f /etc/bash_completion ]]; then
    . /etc/bash_completion
fi

# Add completion when sudo
complete -cf sudo

# Prevent wrapping problems after window resizing
shopt -s checkwinsize

[[ -f /etc/profile.d/autojump.bash ]] && . /etc/profile.d/autojump.bash

# Append to the history file, don't overwrite it
shopt -s histappend
