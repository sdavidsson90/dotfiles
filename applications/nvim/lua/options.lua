local g = vim.g
local o = vim.opt

--------------------------------
-- These should be sourced first
g.mapleader = " " -- Set leader key
g.loaded_netrw = 1 -- Disable netrw
g.loaded_netrwPlugin = 1
--------------------------------

-- Appearance
o.termguicolors = true -- True color support
o.cursorline = true -- Enable highlighting of the current line
o.wrap = true -- Line wrap
o.sidescrolloff = 8 -- Columns of context
o.showmode = false -- Dont show mode since we have a statusline
o.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
o.fillchars = {eob = " "}

-- Lines
o.number = true -- Print line number
o.relativenumber = true -- Relative line numbers

-- Indents
o.expandtab = true -- Use spaces instead of tabs
o.tabstop = 2 -- Number of spaces tabs count for
o.smartindent = true -- Insert indents automatically
o.shiftround = true -- Round indent
o.shiftwidth = 2 -- Size of an indent
o.shortmess:append({ W = true, I = true, c = true })

-- Behaviour
o.mouse = "a" -- Enable mouse
o.autochdir = true -- automatically change directory to that of file
o.fileencoding = "utf-8"
o.swapfile = false -- swapfiles suck!
o.undofile = true -- undofiles rock!
o.undolevels = 1000 -- in case we want to go back
o.clipboard:append("unnamedplus") -- Sync with system clipboard
o.splitright = true
o.virtualedit = "block"

-- Search
o.grepprg = "rg --vimgrep"
o.ignorecase = true
