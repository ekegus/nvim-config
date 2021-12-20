-- Theme
vim.opt.termguicolors = true

vim.g.material_style = "deep ocean"

vim.cmd[[colorscheme material]]

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
require("config/treesitter")
require("config/null-ls")
require("config/indent-blankline")

