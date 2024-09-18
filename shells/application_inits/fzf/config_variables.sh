case $(uname -s) in
  Linux)
    export FZF_DEFAULT_COMMAND='fdfind --type f -H .'
    export FZF_DEFAULT_OPTS='-m --height 100% --no-border --layout=reverse --exact'
    export FZF_CTRL_T_OPTS="--preview 'batcat -pf --line-range :100 {}'"
    ;;
  Darwin)
    export FZF_DEFAULT_COMMAND='fd --type f -H .'
    export FZF_DEFAULT_OPTS='-m --height 100% --no-border --layout=reverse --exact'
    export FZF_CTRL_T_OPTS="--preview 'bat -pf --line-range :100 {}'"
    ;;
esac
