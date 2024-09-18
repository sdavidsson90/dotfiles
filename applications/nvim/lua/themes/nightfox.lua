return {
  "EdenEast/nightfox.nvim",
  event = "VeryLazy",
  config = function()
    require('nightfox').setup({
      options = {
        transparent = true
      },
    }
  )
  end
}
