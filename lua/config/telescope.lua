require('telescope').setup {
  defaults = {
    file_ignore_patterns = {"node_modules"},
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
  },
}

-- File Pickers
vim.api.nvim_set_keymap('n', '<leader>fw', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ff', [[<cmd>lua require('telescope.builtin').find_files()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ft', [[<cmd>lua require('telescope.builtin').file_browser()<CR>]], { noremap = true, silent = true })


-- Vim Pickers
vim.api.nvim_set_keymap('n', '<Leader>c', [[<cmd>lua require('telescope.builtin').commands()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fb', [[<cmd>lua require('telescope.builtin').buffers()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sb', [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tc', [[<cmd>lua require('telescope.builtin').colorscheme()<CR>]], { noremap = true, silent = true })


-- LSP Pickers
vim.api.nvim_set_keymap('n', 'gr', [[<cmd>lua require('telescope.builtin').lsp_references()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>do', [[<cmd>lua require('telescope.builtin').diagnostics()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ac', [[<cmd>lua require('telescope.builtin').lsp_code_actions()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ds', [[<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ws', [[<cmd>lua require('telescope.builtin').lsp_workspace_symbols()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gi', [[<cmd>lua require('telescope.builtin').lsp_implementations()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gt', [[<cmd>lua require('telescope.builtin').lsp_type_definitions()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gd', [[<cmd>lua require('telescope.builtin').lsp_definitions()<CR>]], { noremap = true, silent = true })


-- Git Pickers
vim.api.nvim_set_keymap('n', '<leader>fg', [[<cmd>lua require('telescope.builtin').git_status()<CR>]], { noremap = true, silent = true })

