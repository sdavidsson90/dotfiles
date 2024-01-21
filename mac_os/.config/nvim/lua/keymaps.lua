local keymap = vim.keymap.set

--
keymap('n', '<leader>qq', ':qa!<CR>', {desc = "Quit all!"})
keymap('n', '<leader>wq', ':wqa!<CR>', {desc = "Write and quit all!"})
--
keymap('n', '<leader>bn', ':bn<CR>', {desc = "Buffer next"})
keymap('n', '<leader>bp', ':bp<CR>', {desc = "Buffer previous"})
keymap('n', '<leader>bd', ':bd<CR>', {desc = "Buffer delete"})
keymap('n', '<leader>bw', ':bw!<CR>', {desc = "Buffer wipeout (quit)"})
--
keymap('n', '<leader>ml', ':wincmd l<CR>', {desc = "Move left in window splits"})
keymap('n', '<leader>mh', ':wincmd h<CR>', {desc = "Move right in window splits"})

-- Go to from terminal mode to normal mode
keymap('t', '<Esc>', '') 
