local wezterm = require 'wezterm'
local act = wezterm.action
local config = {
  enable_wayland =false,
  check_for_updates = false,
  --
  font = wezterm.font("CodeNewRoman Nerd Font Mono", {weight="Regular", stretch="Normal", style="Normal"}),
  font_size = 11.3,
  cell_width = 1,
  line_height = 1,

  default_cursor_style = 'SteadyBlock',
  color_scheme = 'Oxocarbon Dark',
  --
  initial_rows = 40,
  initial_cols = 80,
  adjust_window_size_when_changing_font_size = false,
  window_background_opacity = 0.5,
  window_padding = {
    left = 4,
    right = 4,
    top = 0,
    bottom = 0,
  },
  -- window_decorations = "RESIZE",
  inactive_pane_hsb = {brightness = 1, saturation = 1, hue = 1},
  window_close_confirmation = 'AlwaysPrompt',
  window_background_opacity = 1,
  -- 
  use_fancy_tab_bar = true,
  hide_tab_bar_if_only_one_tab = true,
  --
  disable_default_key_bindings = true,
  keys = {
    {mods = 'CTRL|SHIFT',  key = "?",  action = act.IncreaseFontSize},
    {mods = 'CTRL|SHIFT',  key = "+",  action = act.IncreaseFontSize},
    {mods = 'CTRL|SHIFT',  key = "-",  action = act.DecreaseFontSize},
    {mods = 'CTRL|SHIFT',  key = "_",  action = act.DecreaseFontSize},
    {mods = 'CTRL|SHIFT',  key = 'n',  action = act.SpawnWindow},
    {mods = 'CTRL|SHIFT',  key = "Enter",  action = act.ToggleFullScreen},
    {mods = 'CTRL|SHIFT',  key = 't',  action = act.SpawnTab 'DefaultDomain'},
    {mods = 'ALT',         key = 't',  action = act.SpawnTab 'DefaultDomain'},
    {mods = 'ALT',  key = 'LeftArrow', action = act.ActivateTabRelative(-1) },
    {mods = 'ALT',  key = 'RightArrow',action = act.ActivateTabRelative(1) },
    {mods = 'ALT',         key = 'q',  action = act.CloseCurrentTab { confirm = true }},
    {mods = 'CTRL|SHIFT',  key = 'b',  action = act.CloseCurrentPane { confirm = true }},
    --
    {mods = 'CMD',         key = 'c',  action = act.ActivateCopyMode},
    {mods = 'CTRL|SHIFT',  key = 'c',  action = act.ActivateCopyMode},
    {mods = 'CMD',         key = 'v',  action = act.PasteFrom 'Clipboard'},
    {mods = 'CTRL|SHIFT',  key = 'v',  action = act.PasteFrom 'Clipboard'},
    --
    {mods = 'CTRL|SHIFT',  key = ':',  action = act.SplitHorizontal { domain = 'DefaultDomain' }},
    {mods = 'CTRL|SHIFT',  key = ';',  action = act.SplitVertical { domain = 'DefaultDomain' }},
    {mods = 'CTRL|SHIFT',  key = 'q',  action = act.CloseCurrentPane {confirm = true} },
    {mods = 'CTRL|SHIFT',  key = 'l',  action = act.RotatePanes 'Clockwise'},
    {mods = 'CTRL|SHIFT',  key = 'k',  action = act.RotatePanes 'CounterClockwise'},
    {mods = 'CTRL|SHIFT',  key = 'UpArrow',    action = act.ActivatePaneDirection 'Up'},
    {mods = 'CTRL|SHIFT',  key = 'DownArrow',  action = act.ActivatePaneDirection 'Down'},
    {mods = 'CTRL|SHIFT',  key = 'LeftArrow',  action = act.ActivatePaneDirection 'Left'},
    {mods = 'CTRL|SHIFT',  key = 'RightArrow', action = act.ActivatePaneDirection 'Right'},
    {mods = 'SHIFT',       key = 'UpArrow',    action = act.AdjustPaneSize { 'Up', 1 }},
    {mods = 'SHIFT',       key = 'DownArrow',  action = act.AdjustPaneSize { 'Down', 1 }},
    {mods = 'SHIFT',       key = 'LeftArrow',  action = act.AdjustPaneSize { 'Left', 1 }},
    {mods = 'SHIFT',       key = 'RightArrow', action = act.AdjustPaneSize { 'Right', 1 }},
  },

  mouse_bindings = {
  {event = { Up = { streak = 1, button = 'Left' } }, mods = 'NONE', action = act.CompleteSelection 'ClipboardAndPrimarySelection'},
  {event = { Up = { streak = 1, button = 'Left' } }, mods = 'CTRL', action = act.OpenLinkAtMouseCursor},
  }
}

return config
