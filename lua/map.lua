local vim = vim

local function map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

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

map("n", "<Leader>cl", "iconsole.log()<Esc>ba", { noremap = true }) -- List buffers and open command menu
map("n", "<Leader>c{", "iconsole.log({})<Esc>bf{a", { noremap = true }) -- List buffers and open command menu
map("n", "<Leader>fi", ":find<Space>", { noremap = true }) -- Open :find
map("n", "<Leader>gi", ":grep -i<Space>", { noremap = true }) -- Open :grep with insensitive search
-------------------------THEMES TOGGLE-----------------------------
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

-------------------------BARBAR-----------------------------
-- map("n", "<Leader>1", ":BufferGoto 1<CR>", { noremap = true, silent = true })
-- map("n", "<Leader>2", ":BufferGoto 2<CR>", { noremap = true, silent = true })
-- map("n", "<Leader>3", ":BufferGoto 3<CR>", { noremap = true, silent = true })
-- map("n", "<Leader>4", ":BufferGoto 4<CR>", { noremap = true, silent = true })
-- map("n", "<Leader>5", ":BufferGoto 5<CR>", { noremap = true, silent = true })
-- map("n", "<Leader>6", ":BufferGoto 6<CR>", { noremap = true, silent = true })
-- map("n", "<Leader>7", ":BufferGoto 7<CR>", { noremap = true, silent = true })
-- map("n", "<Leader>8", ":BufferGoto 8<CR>", { noremap = true, silent = true })
-- map("n", "<Leader>9", ":BufferGoto 9<CR>", { noremap = true, silent = true })

-- map("n", "<Leader>[", ":BufferMovePrevious<CR>", { noremap = true, silent = true })
-- map("n", "<Leader>]", ":BufferMoveNext<CR>", { noremap = true, silent = true })
-- map("n", "<Leader>bp", ":BufferPrevious<CR>", { noremap = true, silent = true })
-- map("n", "<Leader>bn", ":BufferNext<CR>", { noremap = true, silent = true })

-- map("n", "<Leader>bo", ":BufferOrderByBufferNumber<CR>", { noremap = true, silent = true })
-- map("n", "<Leader>bd", ":BufferOrderByDirectory<CR>", { noremap = true, silent = true })
-- map("n", "<Leader>bl", ":BufferOrderByLanguage<CR>", { noremap = true, silent = true })

-- map("n", "<Leader>bw", ":BufferWipeout<CR>", { noremap = true, silent = true })
-- map("n", "<Leader>ba", ":BufferCloseAllButCurrent<CR>", { noremap = true, silent = true })

-- map("n", "<Leader-y>", ":BufferPick<CR>", { noremap = true, silent = true })
