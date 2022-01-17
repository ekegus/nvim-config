local vim = vim
local format = require("formatter")

local prettier = function()
  return {
    exe = "./node_modules/.bin/prettier",
    args = {"--stdin-filepath", vim.fn.shellescape(vim.api.nvim_buf_get_name(0))},
    stdin = true,
  }
end

format.setup {
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
  },
}

vim.api.nvim_set_keymap('n', '<leader>fo', ':Format<CR>', { noremap = true, silent = true })

-- Autocommand for formatting on save
vim.api.nvim_exec([[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.rs,*.tsx,*.ts,*.json FormatWrite
augroup END
]], true)
