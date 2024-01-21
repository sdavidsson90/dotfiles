return {
  'zaldih/themery.nvim',
  event = "VeryLazy",
  priority = 1000, -- load before anything else
  config = function()
    require("themery").setup({
      themes = {
        'kanagawa-wave', 'kanagawa-dragon', 'kanagawa-lotus',
        'nightfox', 'dayfox', 'dawnfox', 'duskfox', 'carbonfox', 'terafox', 'nordfox',
        'oxocarbon',
        'sonokai',
        'tokyonight-night', 'tokyonight-moon', 'tokyonight-storm', 'tokyonight-day',

      },
      themeConfigFile = "~/.config/nvim/lua/themes/theme.lua",
    })
  end,
  vim.keymap.set('n', '<space>ts', '<cmd>Themery<cr>'),
}
