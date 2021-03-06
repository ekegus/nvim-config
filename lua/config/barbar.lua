local vim = vim
local map = require("utils").map

map("n", "<Leader>1", ":BufferGoto 1<CR>", { noremap = true, silent = true })
map("n", "<Leader>2", ":BufferGoto 2<CR>", { noremap = true, silent = true })
map("n", "<Leader>3", ":BufferGoto 3<CR>", { noremap = true, silent = true })
map("n", "<Leader>4", ":BufferGoto 4<CR>", { noremap = true, silent = true })
map("n", "<Leader>5", ":BufferGoto 5<CR>", { noremap = true, silent = true })
map("n", "<Leader>6", ":BufferGoto 6<CR>", { noremap = true, silent = true })
map("n", "<Leader>7", ":BufferGoto 7<CR>", { noremap = true, silent = true })
map("n", "<Leader>8", ":BufferGoto 8<CR>", { noremap = true, silent = true })
map("n", "<Leader>9", ":BufferGoto 9<CR>", { noremap = true, silent = true })

map("n", "<Leader>[", ":BufferMovePrevious<CR>", { noremap = true, silent = true })
map("n", "<Leader>]", ":BufferMoveNext<CR>", { noremap = true, silent = true })
map("n", "<Leader>bp", ":BufferPrevious<CR>", { noremap = true, silent = true })
map("n", "<Leader>bn", ":BufferNext<CR>", { noremap = true, silent = true })

map("n", "<Leader>bo", ":BufferOrderByBufferNumber<CR>", { noremap = true, silent = true })
map("n", "<Leader>bd", ":BufferOrderByDirectory<CR>", { noremap = true, silent = true })
map("n", "<Leader>bl", ":BufferOrderByLanguage<CR>", { noremap = true, silent = true })

map("n", "<Leader>bw", ":BufferWipeout<CR>", { noremap = true, silent = true })
map("n", "<Leader>ba", ":BufferCloseAllButCurrent<CR>", { noremap = true, silent = true })

map("n", "<C-p>", ":BufferPick<CR>", { noremap = true, silent = true })

vim.g.bufferline = {
	icons = "both",
	semantic_letters = true,
	letters = "asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP",
}
