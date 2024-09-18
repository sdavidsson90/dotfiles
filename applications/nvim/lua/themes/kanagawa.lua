return {
  "rebelot/kanagawa.nvim",
  event = "VeryLazy",
  config = function ()
        require("kanagawa").setup({
            transparent = true,
          })
      end
}
