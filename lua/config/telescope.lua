local vim = vim
local trouble = require("trouble.providers.telescope")

require("telescope").setup({
	defaults = {
		file_ignore_patterns = { "node_modules" },
		mappings = {
			i = {
				["<C-u>"] = false,
				["<c-t>"] = trouble.open_with_trouble,
				["<C-d>"] = false,
			},
			n = { ["<c-t>"] = trouble.open_with_trouble },
		},
	},
})

-- File browser extension
require("telescope").load_extension("file_browser")
vim.api.nvim_set_keymap(
	"n",
	"<leader>fb",
	[[<cmd>lua require('telescope').extensions.file_browser.file_browser()<CR>]],
	{ noremap = true, silent = true }
)

-- Recommended fzf c port
require("telescope").load_extension("fzf")

-- Launch Telescope
vim.api.nvim_set_keymap("n", "<leader><leader>", ":Telescope<CR>", { noremap = true, silent = true })

-- File Pickers
vim.api.nvim_set_keymap(
	"n",
	"<leader>fw",
	[[<cmd>lua require('telescope.builtin').live_grep()<CR>]],
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>ff",
	[[<cmd>lua require('telescope.builtin').find_files()<CR>]],
	{ noremap = true, silent = true }
)

-- Vim Pickers
vim.api.nvim_set_keymap(
	"n",
	"<Leader>c",
	[[<cmd>lua require('telescope.builtin').commands()<CR>]],
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>b",
	[[<cmd>lua require('telescope.builtin').buffers()<CR>]],
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>cb",
	[[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]],
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>tc",
	[[<cmd>lua require('telescope.builtin').colorscheme()<CR>]],
	{ noremap = true, silent = true }
)

-- LSP Pickers
vim.api.nvim_set_keymap(
	"n",
	"gr",
	[[<cmd>lua require('telescope.builtin').lsp_references()<CR>]],
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>do",
	[[<cmd>lua require('telescope.builtin').diagnostics({bufnr = 0})<CR>]],
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>ac",
	[[<cmd>lua require('telescope.builtin').lsp_code_actions()<CR>]],
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>ds",
	[[<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>]],
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>ws",
	[[<cmd>lua require('telescope.builtin').lsp_workspace_symbols()<CR>]],
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
	"n",
	"gi",
	[[<cmd>lua require('telescope.builtin').lsp_implementations()<CR>]],
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
	"n",
	"gI",
	[[<cmd>lua require('telescope.builtin').lsp_implementations({jump_type = 'vsplit'})<CR>]],
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
	"n",
	"gt",
	[[<cmd>lua require('telescope.builtin').lsp_type_definitions()<CR>]],
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
	"n",
	"gT",
	[[<cmd>lua require('telescope.builtin').lsp_type_definitions({jump_type = 'vsplit'})<CR>]],
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
	"n",
	"gd",
	[[<cmd>lua require('telescope.builtin').lsp_definitions()<CR>]],
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
	"n",
	"gD",
	[[<cmd>lua require('telescope.builtin').lsp_definitions({jump_type = 'vsplit'})<CR>]],
	{ noremap = true, silent = true }
)

-- Git Pickers
vim.api.nvim_set_keymap(
	"n",
	"<leader>fg",
	[[<cmd>lua require('telescope.builtin').git_status()<CR>]],
	{ noremap = true, silent = true }
)
