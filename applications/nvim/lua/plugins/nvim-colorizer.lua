return {
  "norcalli/nvim-colorizer.lua", 
  event = "VeryLazy", 
  init = function()
    require('colorizer').setup()
  end,
}
