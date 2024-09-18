if [ ! -z $WEZTERM_PANE ]; then
  alias imgcat="wezterm imgcat"
  alias ew="nvim ~/.config/wezterm/wezterm.lua"
  alias pane="echo $WEZTERM_PANE"
fi
