local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

-- returns the require for use in `config` parameter of packer's use
-- expects the name of the config file
function get_config(name)
    return string.format("require(\"config/%s\")", name)
end

-- bootstrap packer if not installed
if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
        "git", "clone", "https://github.com/wbthomason/packer.nvim",
        install_path
    })
    execute "packadd packer.nvim"
end

-- initialize and configure packer
local packer = require("packer")
packer.init {
    enable = true, -- enable profiling via :PackerCompile profile=true
    threshold = 0 -- the amount in ms that a plugins load time must be over for it to be included in the profile
}
local use = packer.use
packer.reset()

-- actual plugins list
use "wbthomason/packer.nvim" -- Package manager
use "tpope/vim-commentary" -- "gc" to comment visual regions/lines
use { "lewis6991/gitsigns.nvim", requires = { "nvim-lua/plenary.nvim" } }
use {"neovim/nvim-lspconfig"} -- https://github.com/neovim/nvim-lspconfig -- Collection of configurations for built-in LSP 
use { "folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons"} -- Imrpoved diagnostics tool
use { "nvim-telescope/telescope.nvim", requires = { "nvim-lua/plenary.nvim" } } -- UI to select things (files, grep results, open buffers...)
use "nvim-treesitter/nvim-treesitter"
use{
    "jose-elias-alvarez/null-ls.nvim",
    requires = { "nvim-lua/plenary.nvim" },
}
use{
    "jose-elias-alvarez/nvim-lsp-ts-utils",
    requires = { "nvim-lua/plenary.nvim" },
}
use "lukas-reineke/indent-blankline.nvim"

-- Experiment with completion engine and snippets
-- Completions and snippets -- example: https://github.com/hrsh7th/nvim-cmp
use {"hrsh7th/nvim-cmp"} -- Autocompletion plugin
use "hrsh7th/cmp-nvim-lsp" -- LSP source for nvim-cmp

use 'hrsh7th/cmp-vsnip' -- https://github.com/hrsh7th/cmp-vsnip/tree/0abfa1860f5e095a07c477da940cfcb0d273b700
use 'hrsh7th/vim-vsnip' -- Snippet engine -- https://github.com/hrsh7th/vim-vsnip
use "rafamadriz/friendly-snippets" -- https://github.com/rafamadriz/friendly-snippets

-- Theme
use 'marko-cerovac/material.nvim'


