# --
# Default prompt:
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# Powerlevel10k style prompt
# PS1='\[\033[1;34m\]\w\[\033[0m\] (bash) ❯ '

# -- 
export EDITOR="vim"
# -- 
shopt -s histappend
HISTFILE="$HOME/.bash_history"
HISTSIZE=999999999
HISTFILESIZE=99999999
HISTTIMEFORMAT="%d/%m/%y %T "

# --
alias l="ls -lh --group-directories-first --color=auto"
alias ll="ls -Alhv --group-directories-first --color=auto"
alias lt="ls -lhvtr --color=auto"
alias ltr="ls -lhFt --color=auto"
alias llt="ls -Alhvtr --color=auto"
alias lltr="ls -AlhFt --color=auto"
alias lg="ls -AlhvF | grep --color=auto"

#
alias hiss="history | less +G"
alias erc="$EDITOR ~/.bashrc"
alias nvim="vim"
alias grep="grep --color"
#
alias ta="tmux attach -t"
alias tl="tmux ls"
alias tn="tmux new -s"
alias tnd="tmux new -s -d"
alias tk="tmux kill-session -t"
alias tka="tmux kill-server"
# -- 

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
