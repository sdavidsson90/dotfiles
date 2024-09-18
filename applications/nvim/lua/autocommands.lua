-- Variables
local aucmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- Blink (highlight) text on yank
aucmd('TextYankPost', {
  desc = 'Blink (highlight) text on yank',
  group = augroup("highlight_yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
