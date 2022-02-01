local vim = vim

-- Theme
vim.opt.termguicolors = true

-- vim.g.material_style = "deep ocean"

-- vim.cmd[[colorscheme material]]
vim.cmd([[colorscheme nightfly]])
-- require("rose-pine").set("moon")

require("map")
require("options")
require("cmd")
require("plugins")
