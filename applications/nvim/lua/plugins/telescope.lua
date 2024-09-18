return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sharkdp/fd",
    "nvim-tree/nvim-web-devicons",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  config = function()
    local actions = require("telescope.actions")
    -- 
    require("telescope").setup({
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { height = 0.95 },
        path_display = { "truncate" },
        mappings = { i = { ["<esc>"] = actions.close } },
        cache_picker = { limit_entries = 5000 }
      },
    })
    require("telescope").load_extension("fzf")
    --
    local map = vim.keymap.set
    map("n", "<leader>ff", ":Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    map("n", "<leader>fr", ":Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
    map("n", "<leader>fb", ":Telescope buffers<cr>", { desc = "Fuzzy find buffers" })
    map("n", "<leader>fs", ":Telescope live_grep<cr>", { desc = "Find string in files in cwd" })
  end,
}
