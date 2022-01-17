-- Theme
vim.opt.termguicolors = true

-- vim.g.material_style = "deep ocean"

-- vim.cmd[[colorscheme material]]
vim.cmd[[colorscheme nightfly]]

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
require("config/indent-blankline")
-- require("config/lualine")

-- require("config/tabnine")
require("config/formatter")
-- TODO
-- 1. Take a look at these settings: https://github.com/jose-elias-alvarez/dotfiles/blob/main/config/nvim/lua/plugins/init.lua
-- 2. Import config in a better way. 
