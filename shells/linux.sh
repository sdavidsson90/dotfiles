case $(uname -s) in
  Linux)
    # --
    export XDG_DATA_HOME="$HOME/.local/share"
    export XDG_CACHE_HOME="$HOME/.cache"
    export XDG_CONFIG_HOME="$HOME/.config"
    
    export LESSHISTFILE=-

    alias battery="upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | grep -o '[0-9]\+%'"

    ;;
esac
