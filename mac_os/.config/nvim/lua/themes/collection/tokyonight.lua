return {
  "folke/tokyonight.nvim",
  event = "VeryLazy",
  priority = 1000,
  config = function ()
        require("tokyonight").setup({
            transparent = true,
          })
      end
  }
