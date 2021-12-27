-------------------- LSP CONFIG -------------------------------
-- https://github.com/neovim/nvim-lspconfig

local nvim_lsp = require 'lspconfig'
-- local ts_utils = require 'ts_utils'

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- https://github.com/bluz71/vim-nightfly-guicolors
  vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
    vim.lsp.handlers.hover, {
      border = 'single'
    }
  )
  vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
    vim.lsp.handlers.signatureHelp, {
      border = 'single'
    }
  )

  --- TS SERVER STUFF -----------------------------
  -- TODO: Figure out how to only do this for ts-server
  -- Format on autosave - https://github.com/jose-elias-alvarez/null-ls.nvim
  if client.resolved_capabilities.document_formatting then
    vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
  end

  -- Disable formatting conflicts - https://github.com/jose-elias-alvarez/null-ls.nvim/wiki/Avoiding-LSP-formatting-conflicts
  client.resolved_capabilities.document_formatting = false
  client.resolved_capabilities.document_range_formatting = false

  -- Avoid duplicate diagnostics warning between ts-server/prettier and eslint 
  -- https://github.com/jose-elias-alvarez/nvim-lsp-ts-utils
  local ts_utils = require("nvim-lsp-ts-utils")
  ts_utils.setup({
    filter_out_diagnostics_by_code = {6133},
    ts_utils.setup_client(client)
  }) 
  ------------------------------------------------
  
  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
   buf_set_keymap('n', '<Leader>sd', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
   buf_set_keymap('n', '<Leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
end

-- Customise the icons in the gutter
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- nvim-cmp supports additional completion capabilities
-- https://github.com/hrsh7th/cmp-nvim-lsp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'tsserver', 'eslint' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    flags = {
      debounce_text_changes = 150,
    }
  }
end

