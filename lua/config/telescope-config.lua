local vim = vim
local trouble = require("trouble.providers.telescope")
local map = require("utils").map

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
map(
	"n",
	"<leader>fb",
	[[<cmd>lua require('telescope').extensions.file_browser.file_browser({path='%:p:h'})<CR>]],
	{ noremap = true, silent = true }
)

-- Recommended fzf c port
require("telescope").load_extension("fzf")

-- Launch Telescope
map("n", "<leader><leader>", ":Telescope<CR>", { noremap = true, silent = true })

-- File Pickers
map("n", "<leader>fw", [[<cmd>lua require('telescope.builtin').live_grep()<CR>]], { noremap = true, silent = true })
map("n", "<leader>lg", [[<cmd>lua require('telescope.builtin').live_grep()<CR>]], { noremap = true, silent = true })
map("n", "<leader>ff", [[<cmd>lua require('telescope.builtin').find_files()<CR>]], { noremap = true, silent = true })

-- Vim Pickers
map("n", "<Leader>co", [[<cmd>lua require('telescope.builtin').commands()<CR>]], { noremap = true, silent = true })
map("n", "<leader>bu", [[<cmd>lua require('telescope.builtin').buffers()<CR>]], { noremap = true, silent = true })
map(
	"n",
	"<leader>cb",
	[[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]],
	{ noremap = true, silent = true }
)
map("n", "<leader>cs", [[<cmd>lua require('telescope.builtin').colorscheme()<CR>]], { noremap = true, silent = true })

-- LSP Pickers
map("n", "gr", [[<cmd>lua require('telescope.builtin').lsp_references()<CR>]], { noremap = true, silent = true })
map(
	"n",
	"<leader>di",
	[[<cmd>lua require('telescope.builtin').diagnostics({bufnr = 0})<CR>]],
	{ noremap = true, silent = true }
)
map(
	"n",
	"<leader>ac",
	[[<cmd>lua require('telescope.builtin').lsp_code_actions()<CR>]],
	{ noremap = true, silent = true }
)
map(
	"n",
	"<leader>ds",
	[[<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>]],
	{ noremap = true, silent = true }
)
map(
	"n",
	"<leader>ws",
	[[<cmd>lua require('telescope.builtin').lsp_dynamic_workspace_symbols()<CR>]],
	{ noremap = true, silent = true }
)
map("n", "gi", [[<cmd>lua require('telescope.builtin').lsp_implementations()<CR>]], { noremap = true, silent = true })

map("n", "gt", [[<cmd>lua require('telescope.builtin').lsp_type_definitions()<CR>]], { noremap = true, silent = true })
map(
	"n",
	"gT",
	[[<cmd>lua require('telescope.builtin').lsp_type_definitions({jump_type = 'vsplit'})<CR>]],
	{ noremap = true, silent = true }
)
map("n", "gd", [[<cmd>lua require('telescope.builtin').lsp_definitions()<CR>]], { noremap = true, silent = true })
map(
	"n",
	"gD",
	[[<cmd>lua require('telescope.builtin').lsp_definitions({jump_type = 'vsplit'})<CR>]],
	{ noremap = true, silent = true }
)

-- Git Pickers
map("n", "<leader>fg", [[<cmd>lua require('telescope.builtin').git_status()<CR>]], { noremap = true, silent = true })
