-------------------- TROUBLE -------------------------------

vim.api.nvim_set_keymap("n", "<leader>do", "<cmd>TroubleToggle<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "gr", "<cmd>Trouble lsp_references<cr>",
  {silent = true, noremap = true}
)