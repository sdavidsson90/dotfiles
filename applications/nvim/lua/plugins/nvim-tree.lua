return{
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  event = "VeryLazy",
  config = function()
    vim.g.nvim_tree_auto_close = 1
    require("nvim-tree").setup({
      renderer = {
        indent_markers = { enable = true },
        icons = { glyphs = { folder = { arrow_closed = "", arrow_open = "" }}},
      },
      actions = {open_file = { quit_on_open = false }},
      git = { ignore = false },
      view = { side = "left" },
      update_focused_file = {
        enable = true,
        update_cwd = false,
    },
    })
    --
    local keymap = vim.keymap
    keymap.set("n", "<leader>fe", ":NvimTreeToggle<cr>")
    --
   end,
}

-- We need this: https://github.com/nvim-tree/nvim-tree.lua/wiki/Auto-Close
