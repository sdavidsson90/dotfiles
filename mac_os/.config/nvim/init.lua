--
require("options")
--
vim.g.mapleader = " "
vim.g.maplocalleader = " "
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
  {import = "themes.collection"},
  {import = "plugins.lsp"},
change_detection = {enabled = true, notify = false},
})
--
require("themes/theme")
require("keymaps")
vim.cmd('highlight MatchParen gui=bold')
