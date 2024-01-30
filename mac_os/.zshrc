export LC_ALL="en_CA.UTF-8"
bindkey "^[[1;5C" forward-word  # ctrl + left: go to next word
bindkey "^[[1;5D" backward-word # ctrl + right: go to previous word

export HISTFILE=~/.zsh_history
export HISTSIZE=999999999
export HISTFILESIZE=$HISTSIZE
export SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY     # Adds timestamp to history
setopt INC_APPEND_HISTORY   # Append command to history immediately (instead of upon exit)
setopt SHARE_HISTORY        # Share history between all sessions.

# -- CORE UTILS
source /Users/ssd-mbp/Filen_io/Mellemting/ssd-mbp/copy_tools.sh

alias l="gls -lhF --color=auto --group-directories-first"
alias ll="gls -lhFA --color=auto --group-directories-first"
alias lt="gls -lhtFr --color=auto"
alias llt="gls -lhtFAr --color=auto"
alias lg="ls -lhFAv | rg -S --colors='match:bg:cyan' --colors='match:fg:black'"
alias t="exa -a --tree --icons -I .git"

alias rm="trash-put"
alias erc='nvim ~/.zshrc'
alias ew="nvim ~/.config/wezterm/wezterm.lua"
alias night='nightlight toggle && echo -n "Nightlight temperature: " ; nightlight temp'
alias mac_update="sudo softwareupdate --install --os-only"
alias brew_remove='item= brew remove $(brew list | fzf)'
alias brew_upgrade='tmux new -d -s brew_updates "brew update && brew upgrade && brew cu && brew doctor && brew autoremove && brew cleanup"'

# -- CONNECTIONS
alias aicloud='ssh ai-fe02'
alias strato="bash /Users/ssd-mbp/Filen_io/Mellemting/ssd-mbp/strato_easyconnect.sh"
alias delcon="rm ~/.ssh/controlmasters/*"

# -- APPLICATION SHORTCUTS
alias ta="tmux attach -t"
alias tl="tmux ls"
alias tn="tmux new -s"
alias tk="tmux kill-session -t"
alias tka="tmux kill-server"

alias c="chatgpt --model gpt-3.5-turbo-1106"
alias gpt4="chatgpt --model gpt-4"
alias n="nvim"
alias co='conda activate $( ls /usr/local/Caskroom/miniconda/base/envs | fzf --height=40% --no-border)'
alias cl='conda list | fzf'
alias cat="bat -p"
alias gitall="git add . && git commit -m "$(printf $RANDOM)" && git push"
alias img="wezterm imgcat"

# -- Application inits
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh && antidote load
source ~/.p10k.zsh
eval "$(zoxide init zsh)"

# -- FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='fd --type f .'
export FZF_DEFAULT_OPTS='-m --height 100% --no-border --layout=reverse --exact'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat --style=plain --color=always --line-range :50 {}'"

# -- CONDA 
__conda_setup="$('/usr/local/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
