# -- 
case $(uname -s) in

  Darwin)

    # --
    export HOMEBREW_NO_AUTO_UPDATE=1
    alias brew_list='brew list | fzf'
    alias brew_remove='brew remove $(brew list | fzf)'
    alias brew_upgrade='tmux new -d -s brew_updates "brew update && brew upgrade && brew cu && brew doctor && brew autoremove && brew cleanup"'
    
    # --
    alias macos_upgrade="sudo softwareupdate --install --os-only"
    
    # --
    alias night='nightlight toggle && echo "Nightlight status: $(nightlight status)"'
    #--
    alias battery="pmset -g batt | grep -o '[0-9]\+%'"
    ;;

esac
