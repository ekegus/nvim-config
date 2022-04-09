local vim = vim
local map = require("utils").map

local prettier = function()
	return {
		exe = "./node_modules/.bin/prettier",
		args = { "--stdin-filepath", vim.fn.shellescape(vim.api.nvim_buf_get_name(0)) },
		stdin = true,
	}
end

local lua = function()
	return {
		exe = "stylua",
		args = { "-" },
		stdin = true,
	}
end

local python = function()
	return {
		exe = "python3 -m autopep8",
		args = {
			"--in-place --aggressive --aggressive",
			vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
		},
		stdin = false,
	}
end

require("formatter").setup({
	logging = false,
	filetype = {
		css = { prettier },
		scss = { prettier },
		html = { prettier },
		javascript = { prettier },
		javascriptreact = { prettier },
		typescript = { prettier },
		typescriptreact = { prettier },
		markdown = { prettier },
		json = { prettier },
		jsonc = { prettier },
		lua = { lua },
		python = { python },
	},
})

map("n", "<leader>fo", ":Format<CR>", { noremap = true, silent = true })

-- Autocommand for formatting on save
vim.api.nvim_exec(
	[[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.rs,*.tsx,*.ts,*.json,*.lua,*.py FormatWrite
augroup END
]],
	true
)
