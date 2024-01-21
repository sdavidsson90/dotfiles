return{
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  event = "VeryLazy",
  config = function()
    --
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    -- update_focused_file = { enable = true, update_root = true},
    --
    require("nvim-tree").setup({
      renderer = {
        indent_markers = { enable = true },
        icons = { glyphs = { folder = { arrow_closed = "", arrow_open = "" }}},
      },
      actions = {open_file = { quit_on_open = false }},
      filters = { custom = { ".DS_Store", }},
      git = { ignore = false },
    })
    --
    local keymap = vim.keymap
    keymap.set("n", "<leader>fe", ":NvimTreeToggle<cr>")
    -- keymap.set("n", "<leader>fi", ":NvimTreeFocus<cr>")
    -- keymap.set("n", "<leader>fc", ":NvimTreeCollapse<CR>") -- does this work?
    -- keymap.set("n", "<leader>fr", ":NvimTreeRefresh<cr>")
    -- keymap.del('n', 'f', <not>) -- Disables the keybinding for "Filter" in nvim-tree
    --
   end,
}
