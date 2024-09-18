# -------------------------------------
# Checks if you have any open Tmux sessions (in case you forget)
if [ -z "$TMUX" ]; then
    tmux ls > /dev/null 2>&1
    if [[ $? == 0 ]] ; then
        echo "Open Tmux sessions:"
        tmux ls
    fi
fi


# -------------------------------------
# List Tmux sessions (if there are any)
tl() {
  tmux ls > /dev/null 2>&1
  if [[ $? == 1 ]] ; then
    echo "There are no open Tmux sessions."
    return 1
  fi

  echo "Open Tmux sessions:"
  tmux ls
}


# ---------------------------------
# New Tmux session (optional: name)
tn() {
  if [ -z $1 ]; then
    tmux new
  else
    tmux new -s "$1"
  fi
}


# -------------------------
# New detached Tmux session
tnd() {
  tmux new-session -d "$@"
}


# -----------------------------------------------------
# Choose which Tmux session to attach to (if there any)
ta() {
  number_of_sessions=$(tmux ls 2> /dev/null | wc -l | tr -d ' ')

  if [[ $number_of_sessions < 1 ]]; then
    echo "There are no open Tmux sessions."
    return 1
  elif [[ $number_of_sessions == 1 ]]; then
    tmux attach
  elif [[ $number_of_sessions > 1 ]]; then
    echo "Choose a Tmux session to attach to:"
    tmux attach -t $(tmux ls | fzf +m | cut -d ':' -f1)
  fi

}


# ------------------------------------------------
# Choose which Tmux session to kill (if there any)
tk() {
  echo "Choose one or more Tmux sessions to kill:"
  for i in $(tmux ls | fzf | cut -d ':' -f1); do
    tmux kill-session -t $i
    echo "Killed session: $i"
  done
  
  tmux ls > /dev/null 2>&1
  if [[ $? == 1 ]] ; then
    echo "There are no more open Tmux sessions."
    return 1
  fi
}


# ----------------------
# Kill all Tmux sessions
tka() {
  tmux ls > /dev/null 2>&1
  if [[ $? == 1 ]] ; then
    echo "There are no open Tmux sessions."
    return 1
  fi

  for i in $(tmux ls | cut -d ':' -f1); do
    tmux kill-session -t $i
    echo "Killed session: $i"
  done

  tmux ls > /dev/null 2>&1
  if [[ $? == 1 ]] ; then
    echo "There are no more open Tmux sessions."
    return 1
  fi
}
