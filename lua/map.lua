local vim = vim

local function map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-------------------- MAPS -------------------------------
map("", "<Space>", "<Nop>", { noremap = true, silent = true }) -- Unmap <Space> so we can use it as leader
vim.g.mapleader = " " --Remap space as leader key
vim.g.maplocalleader = " "
map("n", ";", ":", { noremap = true }) -- Remap : to ;
map("n", "<Leader>ev", ":e $MYVIMRC<CR>", { noremap = true }) -- Open init.lua
map("n", "<Leader>sv", ":source $MYVIMRC<CR>", { noremap = true }) -- Source init.lua
map("n", "<Leader>/", ":nohlsearch<CR>", { noremap = true }) -- Remove search highlight
map("n", "<Leader>ls", ":buffers<CR>:buffer<Space>", { noremap = true }) -- List buffers and open command menu
map("", "q", "<Nop>", { noremap = false }) -- Disable recording macros
map("", "Q", "<Nop>", { noremap = false }) -- Disable Ex Mode

map("n", "<Leader>fi", ":find<Space>", { noremap = true }) -- Open :find
map("n", "<Leader>gi", ":grep -i<Space>", { noremap = true }) -- Open :grep with insensitive search

vim.api.nvim_set_keymap(
	"n",
	"<leader>ma",
	[[<Cmd>lua require('material.functions').toggle_style()<CR>]],
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>rp",
	[[<cmd>lua require('rose-pine').toggle()<cr>]],
	{ noremap = true, silent = true }
)
