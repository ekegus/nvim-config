vim.opt.termguicolors = true

require("startup").setup({ theme = "dashboard" })
require("which-key").setup({})

require("map")
require("options")
require("cmd")
require("plugins")
require("colors")
