local vim = vim

-- Theme
vim.opt.termguicolors = true

-- vim.g.material_style = "deep ocean"

-- vim.cmd[[colorscheme material]]
-- vim.cmd([[colorscheme nightfly]])
require('rose-pine').set('moon')

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
-- 1. Create local stylua.toml file and update formatter config.
-- 2. Import config in a better way.
