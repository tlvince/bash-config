# Title:    .bashrc
# Author:   Tom Vincent
# Created:  < 2009-05-07    # When I switched to Arch Linux
# Version:  2010-05-27
#
# Run "source ~/.bashrc" or ". .bashrc" (or logout) to apply changes
# Run "env" to display all environment variables in use
# Run "cat /etc/issue" to display Linux distro info

source ~/.bash_aliases

# Load some library functions
source ~/src/bash/lib/libLoader.sh
LIBS=(extractArchive spellChecker dictionary calculator upDirectory \
      locateWorkingDirectory)
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

#-----------------------------------------------------------------------
# Environment Variables
#-----------------------------------------------------------------------
export PATH=$HOME/bin:$PATH
export EDITOR="vim"
export VISUAL="vim"
export OOO_FORCE_DESKTOP=gnome
#export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"
#export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dsun.java2d.d3d=false -Dsun.java2d.opengl=true"
#export GNOME_DESKTOP_SESSION_ID="xmonad"    # xdg-utils http://tr.im/oszm
export DESKTOP_SESSION="xmonad"
export DE="xfce"    # http://bbs.archlinux.org/viewtopic.php?id=81282

export BROWSER="xdg-open"
#export INTEL_BATCH=1                       # Intel i830 performance tweak
export OPERAPLUGINWRAPPER_PRIORITY=0        # Speed-up Opera plugins

#export SAL_USE_VCLPLUGIN="kde" # http://code.google.com/p/xmonad/issues/detail?id=200

#-----------------------------------------------------------------------
# History
#-----------------------------------------------------------------------
export HISTCONTROL=erasedups
export HISTSIZE=1000
export HISTFILESIZE=10000

# Append to the history file, don't overwrite it
shopt -s histappend
