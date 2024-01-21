--
local o = vim.opt
--
-- Tabs
o.expandtab = true -- Use spaces instead of tabs
o.tabstop = 2 -- Number of spaces tabs count for
-- Lines
o.number = true -- Print line number
o.relativenumber = true -- Relative line numbers

-- Behaviour
o.autochdir = true -- automatically change directory to that of file
o.mouse = "a" -- Enable mouse mode
o.undofile = true
o.undolevels = 10000
o.updatetime = 200 -- Save swap file and trigger CursorHold
o.clipboard:append("unnamedplus") -- Sync with system clipboard

-- Search
o.grepprg = "rg --vimgrep"
o.ignorecase = true

-- Appearance
o.termguicolors = true -- True color support
o.cursorline = true -- Enable highlighting of the current line
o.wrap = true -- Line wrap
o.sidescrolloff = 8 -- Columns of context
o.fileencoding = "utf-8"
o.showmode = false -- Dont show mode since we have a statusline
o.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time

-- Indents
o.smartindent = true -- Insert indents automatically
o.shiftround = true -- Round indent
o.shiftwidth = 2 -- Size of an indent
o.shortmess:append({ W = true, I = true, c = true })
o.swapfile = false 
