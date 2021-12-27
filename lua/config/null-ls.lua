local null_ls = require("null-ls")

-- register any number of sources simultaneously
local sources = { 
-- null_ls.builtins.diagnostics.eslint_d.with({
--       prefer_local = "node_modules/.bin", -- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
--   }), 
null_ls.builtins.formatting.prettier.with({
      prefer_local = "node_modules/.bin",  -- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
      disabled_filetypes = { "typescript", "typescriptreact" }, -- DIRTY Workaround for making prettier and eslint avoid coliding
  }), 
-- null_ls.builtins.code_actions.eslint_d.with({
--       prefer_local = "node_modules/.bin",  -- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
--   }), 
}

null_ls.setup({ sources = sources })
