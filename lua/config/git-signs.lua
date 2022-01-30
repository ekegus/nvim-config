-------------------- GIT SIGNS -------------------------------
require("gitsigns").setup({
	current_line_blame = true,
	current_line_blame_opts = {
		virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
		delay = 1000,
	},
	keymaps = {
		["n gn"] = { expr = true, "&diff ? 'gn' : '<cmd>Gitsigns next_hunk<CR>'" },
		["n gp"] = { expr = true, "&diff ? 'gp' : '<cmd>Gitsigns prev_hunk<CR>'" },
		["v <Leader>gu"] = ":Gitsigns reset_hunk<CR>",
		["n <leader>gu"] = "<cmd>Gitsigns reset_hunk<CR>",
		["n <leader>gd"] = "<cmd>Gitsigns diffthis<CR>",
	},
})
