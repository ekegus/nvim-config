-------------------- CMD -------------------------------
local vim = vim -- to execute Vim commands e.g. cmd('pwd')
local cmd = vim.cmd -- to execute Vim commands e.g. cmd('pwd')

-- Autosave - https://vim.fandom.com/wiki/Auto_save_files_when_focus_is_lost
cmd([[
  augroup AutoSave
    autocmd!
    :au FocusLost * :wa
    :au BufLeave * :wa
  augroup end
]])

-- Highlight on yank
vim.cmd([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]])

-- vim.cmd [[
--   au BufWritePost <buffer> lua require('lint').try_lint()
-- ]]

-- Make :find useful
cmd("set path=$PWD/src/**")
cmd("set path+=$PWD/test/**")
