--
require("options") -- Should always be sourced first!
require("keymaps")
require("autocommands")

--
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

--
require("lazy").setup({
  {import = "plugins"},
  {import = "plugins.lsp"},
  {import = "themes"},
  change_detection = {enabled = true, notify = true},
})

--
vim.cmd('colorscheme terafox')
