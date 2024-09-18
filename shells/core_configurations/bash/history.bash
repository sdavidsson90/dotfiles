shopt -s histappend
export HISTSIZE=99999999
export HISTFILESIZE=$HISTSIZE
export HISTIGNORE='ls:l:ll:z:history:cd_down:cd_up:cd_newest'
export HISTTIMEFORMAT='%d/%m/%y %T '

# --
alias no_history="set +o history"
