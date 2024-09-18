local map = vim.keymap.set

-- Bufers
map('n', '<leader>bn', ':bn<CR>',  { desc = "Buffer next"})
map('n', '<Right>', ':bn<CR>',  { desc = "Buffer next"})
map('n', '<leader>bp', ':bp<CR>',  { desc = "Buffer previous"})
map('n', '<leader>bd', ':bd<CR>',  { desc = "Buffer delete"})
map('n', '<leader>bq', ':bw!<CR>', { desc = "Buffer wipeout (quit)"})
map('n', '<leader>bN', ':enew<CR>', { desc = "New (empty) buffer"})
map('n', '<leader>bN', ':enew<CR>', { desc = "New (empty) buffer"})

-- Nvim controls
map('n', '<leader>so', ':source %<CR>', { desc = "Source this file"})
map('n', '<C-Up>', 'gk', { desc = "Move up across line break"})
map('n', '<C-Down>', 'gj', { desc = "Move down across line break"})

---------------
-- R
vim.api.nvim_create_autocmd("FileType", {
  pattern = 'r',
  callback = function()
    vim.schedule(
      function()
        map('i', '<S-C-m>', '%>% ', {desc = "Insert '%>%'"})
      end)
  end,
  })
