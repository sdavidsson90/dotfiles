return {
  'gelguy/wilder.nvim',
  event = "CmdlineEnter",
  config = function()
    local wilder = require('wilder')

    wilder.setup({modes = {':', '/', '?'}})

    wilder.set_option('renderer', wilder.popupmenu_renderer({
      highlighter = wilder.basic_highlighter(),
      max_height = '30%',
    }))
  end,
}
