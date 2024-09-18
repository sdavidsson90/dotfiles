export HISTFILE=$HOME/.zsh_history
export HISTSIZE=99999999
export HISTFILESIZE=$HISTSIZE
export SAVEHIST=$HISTSIZE
export HISTORY_IGNORE="(ls|l|ll|ls -l|pwd|cd_up|cd_down|cdn|cd_newest|cd|cd ..|exec zsh|history)"
setopt EXTENDED_HISTORY     # Adds timestamp to history
setopt INC_APPEND_HISTORY   # Append to history immediately
setopt SHARE_HISTORY        # Share history between all sessions.
