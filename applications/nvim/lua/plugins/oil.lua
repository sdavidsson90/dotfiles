return {
  'stevearc/oil.nvim',
  event = 'VeryLazy',
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("oil").setup({
      delete_to_trash = true,
      is_always_hidden = function(name, _)
        return name == '../' or name == '.git'
      end,
      columns = {},
      keymaps = {
        [""] = "actions.close",
        [""] = "actions.refresh",
        ["<C-Up>"] = "actions.parent",
        ["<C-Down>"] = "actions.open_cwd",
        ["g."] = "actions.toggle_hidden",
        },
      view_options = {
        show_hidden = true,
      },
      float = {
        padding = 2,
        max_width = 70,
        max_height = 40,
        border = "rounded",
        preview_split = "auto",
        win_options = { winblend = 0, wrap = true},
      },
    })
  end,
  vim.keymap.set("n", "<leader>.", "<CMD>Oil --float .<CR>", { desc = "Oil (open current directory)" })
}
