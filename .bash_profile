# ~/.bash_profile: executed by bash(1) when logging in

. $HOME/.bashrc
alsactl -f ~/.config/alsa/state restore

if [[ -z "$DISPLAY" ]]; then
    case $(tty) in
        /dev/tty1)
            # Fix login security hole (^c)
            startx &
            logout
        ;;
        /dev/tty2)
            tmux
            logout
        ;;
    esac
fi
