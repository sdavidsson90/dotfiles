return {
  "debugloop/telescope-undo.nvim",
  event = "VeryLazy",
  dependencies = { -- note how they're inverted to above example
    {"nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" },
    },
  },
  opts = {
    extensions = {
      undo = {
        use_delta = true,
      },
    },
  },
  config = function(_, opts)
    require("telescope").setup(opts)
    require("telescope").load_extension("undo")
  end,
  --
  vim.keymap.set("n", "<leader>fu", ":Telescope undo<cr>")
}
