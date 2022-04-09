local vim = vim
local map = require("utils").map

-------------------- GENERAL VIM MAPPINGS -------------------------------
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

map("n", "<Leader>tn", ":tabnext<CR>", { noremap = true })
map("n", "<Leader>tp", ":tabprevious<CR>", { noremap = true })
map("n", "<Leader>tc", ":tabclose<CR>", { noremap = true })
map("n", "<Leader>ta", ":tabnew<CR>", { noremap = true })

map("n", "<Leader>do", ":DiffviewOpen<CR>", { noremap = true })
map("n", "<Leader>dc", ":DiffviewClose<CR>", { noremap = true })
map("n", "<Leader>dh", ":DiffviewFileHistory<CR>", { noremap = true })

map("n", "<Leader>cl", 'iconsole.log("")<Esc>bla', { noremap = true }) -- List buffers and open command menu
map("n", "<Leader>c{", "iconsole.log({})<Esc>bf{a", { noremap = true }) -- List buffers and open command menu
map("n", "<Leader>fi", ":find<Space>", { noremap = true }) -- Open :find
map("n", "<Leader>gi", ":grep -i<Space>", { noremap = true }) -- Open :grep with insensitive search

-------------------------Terminal-----------------------------
map("n", "<Leader>te", ":terminal<CR>", { noremap = true })
map("n", "<Leader>tv", ":vsplit<cr> :terminal<CR>", { noremap = true })
map("n", "<Leader>th", ":split<cr> :terminal<CR>", { noremap = true })
map("t", "<Esc>", "<C-\\><C-n>")
-------------------------THEMES TOGGLE-----------------------------
map("n", "<leader>ma", [[<Cmd>lua require('material.functions').toggle_style()<CR>]], {
	noremap = true,
	silent = true,
})
map("n", "<leader>rp", [[<cmd>lua require('rose-pine').toggle()<cr>]], { noremap = true, silent = true })
