repl_select() {

    echo "Wezterm pane id: $WEZTERM_PANE"

    echo -n "Select REPL:"
    repl=("ipython" "python3" "R" "bash")

    selected=$(printf "%s\n" "${repl[@]}" | fzf -i --no-multi --cycle --height=6)
   
    if [ -z $selected ]; then
      echo "Select REPL: Nothing selected ... "
      return $?
    else
      echo "Select REPL: $selected"
      # --
      case "$selected" in
        "ipython" | "python3")
          [ -z $CONDA_PREFIX ] && echo "Conda is not activated!"
           ;;
      esac
      # --

      echo ""
      eval $selected
    fi

}
