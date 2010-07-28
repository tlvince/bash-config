# Title:    .bash_aliases
# Author:   Tom Vincent
# Created:  2010-02-29

#-----------------------------------------------------------------------
# Overrides
#-----------------------------------------------------------------------
alias ls='ls -h --color=auto'
alias df='df -h'
alias du='du -hc'
alias htop='htop -u $(whoami) --sort-key PERCENT_MEM'
alias poweroff='sudo poweroff'
alias reboot='sudo reboot'
alias s2ram='sudo s2ram -f'
alias s2disk='sudo s2disk'
alias net-profile='sudo net-profile'
alias free='free -m'
alias iftop='sudo iftop -i eth1'

#-----------------------------------------------------------------------
# Package management
#-----------------------------------------------------------------------
alias repkg='makepkg -efi'
alias update='sudo pacman -Syu && aurget -Syu'
alias uninstall='sudo pacman -Rsn'
alias install='sudo pacman -S'
alias pkgsearch='pacman -Ss'
alias pkginfo='pacman -Si'
alias clean='uninstall $(pacman -Qqdt) && sh ~/src/bash/clean-up.sh'

#-----------------------------------------------------------------------
# Shortcuts
#-----------------------------------------------------------------------
alias xp='xprop | grep "WM_WINDOW_ROLE\|WM_CLASS" &&
          echo "WM_CLASS(STRING) = \"NAME\", \"CLASS\""'
alias iplayer='get_iplayer --nopurge'
alias iplayerd='iplayer --tvmode=flashhd,flashvhigh,flashnormal --get '
alias iplayers='sh ~/src/bash/iplayer-stream.sh'
#alias cls='clear'  # Use CTRL+L
alias mpdlocal='/usr/bin/mpd ~/.mpd/local/local.conf'
alias myip='echo $(curl -s http://www.tlvince.com/sandbox/ip.php)'
