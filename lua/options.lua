local g = vim.g
local opt = vim.opt -- to set options

-------------------- OPTIONS -------------------------------
opt.clipboard = "unnamedplus" -- Copy to the system clipboard as the default register
opt.mouse = "a" -- Enable mouse mode
opt.breakindent = true -- Enable break indent
opt.undofile = true -- Save undo history
opt.ignorecase = true -- Ignore case on search
opt.smartcase = true -- Override ignorecase if the search term contains uppercase chars
opt.gdefault = true -- Enable global flag on substitute by default
opt.swapfile = false -- Let's take a chance

-- Enable sign column all the time
-- so the col doesn't jump in/out
-- when diagnostics is on.
opt.signcolumn = "yes"

opt.number = true
opt.relativenumber = true
opt.scrolloff = 5
opt.splitright = true

opt.tabstop = 2 -- Number of spaces for a tab
opt.shiftwidth = 2 -- Number of spaces for indentation
opt.expandtab = true -- User appropriate number of spaces for tab in insert mode
opt.foldmethod = "indent"
opt.foldenable = false

-- Avoid E37 on buffer change
-- https://medium.com/usevim/vim-101-set-hidden-f78800142855
opt.hidden = true

-- Avoid netrw throwing errors when moving files
g.netrw_keepdir = 0

-- Copy files recursively so that I can easily duplicate folders
g.netrw_localcopydircmd = "cp -r"
