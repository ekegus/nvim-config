-- Theme
vim.opt.termguicolors = true
vim.cmd 'colorscheme night-owl'

-- Vim mappings
require("map")
require("options")
require("cmd")
require("plugins")

-- Plugin Config
require("config/telescope")
require("config/git-signs")
require("config/trouble")
require("config/lsp-config")
require("config/nvim-cmp")
require("config/tabnine")
require("config/treesitter")
require("config/null-ls")
