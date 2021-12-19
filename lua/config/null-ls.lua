local null_ls = require("null-ls")

-- register any number of sources simultaneously
local sources = { 
  null_ls.builtins.diagnostics.eslint_d.with({
        prefer_local = "node_modules/.bin", -- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
    }), 
  null_ls.builtins.formatting.prettier.with({
        prefer_local = "node_modules/.bin",  -- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
    }), 
}

null_ls.setup({ sources = sources })


-- Local executables
-- 1. Duplicate diagnostics errors from eslint and prettier/typescript.
