return {
  "folke/which-key.nvim", -- vim which key
  event = "VeryLazy",
  config = function()
    local which_key = require("which-key")
    which_key.setup({
      window = { border = "none" }
    })
    which_key.register(
      { mode = { "n" },
    })
  end
}
