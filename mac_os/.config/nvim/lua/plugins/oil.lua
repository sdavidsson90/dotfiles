return {
  'stevearc/oil.nvim',
  event = 'VeryLazy',
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function() 
    require("oil").setup() 
  end,
  --
  vim.keymap.set("n", "<leader>.", "<CMD>Oil<CR>", { desc = "Open parent directory" })
}
