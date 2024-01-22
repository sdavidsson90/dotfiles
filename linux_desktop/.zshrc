bindkey "^[[1;5C" forward-word	# ctrl + left:  go to next word
bindkey "^[[1;5D" backward-word # ctrl + right: go to previous word
#
setopt EXTENDED_HISTORY
setopt HIST_FIND_NO_DUPS
setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY
export HISTTIMEFORMAT="[%F %T] "
export HISTFILE=~/.zsh_history
export HISTSIZE=999999999
export SAVEHIST=$HISTSIZE
export HISTFILESIZE=$HISTSIZE

# -- CORE UTILS
source $HOME/Documents/github/sdavidsson90/dotfiles/linux_desktop/copy_tools.sh

alias erc="nvim ~/.zshrc"
alias ew="nvim ~/.config/wezterm/wezterm.lua"
#
alias l="ls -lhF --color=auto --group-directories-first" 
alias ll="ls -AlhF --color=auto --group-directories-first"
alias lt="ls -lhFtr --color=auto"
alias llt="ls -AlhFtr --color=auto"
alias ltr="ls -lhFt --color=auto"
alias lltr="ls -AlhFt --color=auto"
alias lg="ls -AlhvF | rg -S --colors='match:bg:black' --colors='match:fg:white'"
alias t="exa -a --tree --icons -I .git"
#
alias rm="trash-put"
alias bat='batcat -pP'
alias cat='batcat -pP'
alias g='glow'
#
# -- Application shortcuts
alias nvim='/usr/local/bin/nvim.appimage'
alias n='/usr/local/bin/nvim.appimage'
#
alias c="chatgpt --model gpt-3.5-turbo-1106"
alias gpt4="chatgpt --model gpt-4"
#
alias ldap_string="lsadap -insecure -s"
alias ldap_mail="lsadap -insecure -A"

alias co='conda activate $( ls /home/sven/miniconda3/envs/ | fzf --height=40% --no-border)'
alias r='Rscript'

# ------------------------------------------------------
alias sync="sh ~/Filen_io/Mellemting/svenbuntu/sync_script.sh"
alias gitall="git add . && git commit -m "$RANDOM" && git push"
alias gic='git checkout `git branch --list --format="%(refname:short)" | fzf `'
#
alias tn="tmux new -s"
alias tnd="tmux new -s -d"
alias tl="tmux ls"
alias ta="tmux attach -t"
alias tk="tmux kill-session -t"
alias tka="tmux kill-server"

#
alias aicloud="ssh ai-fe02"
alias aicloudgw="ssh ai-fe02gw"
alias strato="bash /Users/ssd-mbp/Filen_io/Mellemting/ssd-mbp/strato_easyconnect.sh"
alias delcon="rm ~/.ssh/controlmasters/*"

# SSH-agent
export SSH_AUTH_SOCK=/run/user/$UID/ssh-agent-$USER.sock
if [ ! -S "$SSH_AUTH_SOCK" ]; then ssh-agent -a "$SSH_AUTH_SOCK" > /dev/null; fi

# ____________________________________________________________________
# Load additional software modules:
source ~/.antidote/antidote.zsh && antidote load
source ~/.p10k.zsh
eval "$(zoxide init zsh)"

# Fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
. /usr/share/doc/fzf/examples/key-bindings.zsh
export FZF_DEFAULT_COMMAND='fdfind --type f --hidden .'
export FZF_DEFAULT_OPTS='-m --height 100% --layout=reverse --exact'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'batcat --plain --color=always --line-range :50 {}'"

# print newest file
nf() {
  echo "-----------------------------------------------------------------"
  echo -e "\033[1mPrinting newest file in directory:\033[0m"
  echo "$(pwd)/$(ls -tp | grep -v / | head -n 1)"
  echo "-----------------------------------------------------------------"
  cat $(ls -tp | grep -v / | head -n 1)
}

# cd into newest directory
cdn() {
  cd $(ls -td */ | head -n 1)
}
