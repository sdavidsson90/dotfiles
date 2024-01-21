return {
  'gelguy/wilder.nvim',
  event = "VeryLazy",
  config = function()
    local wilder = require('wilder')
    wilder.setup({modes = {':', '/', '?'}})

wilder.set_option('renderer', wilder.renderer_mux({
    [':'] = wilder.popupmenu_renderer({
        highlighter = wilder.basic_highlighter(),
    }),
    ['/'] = wilder.wildmenu_renderer({
        highlighter = wilder.basic_highlighter(),
    }),
}))



wilder.set_option('renderer', wilder.popupmenu_renderer({
    highlighter = wilder.basic_highlighter(),
    left = {' ', wilder.popupmenu_devicons()},
    right = {' ', wilder.popupmenu_scrollbar()},
    max_height = '30%',
}))



    -- config goes here
  end,
}
