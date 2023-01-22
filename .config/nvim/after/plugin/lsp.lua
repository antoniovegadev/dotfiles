-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
  -- Replace these with whatever servers you want to ensure_installed
  'sumneko_lua'
})
-- (Optional) Configure lua language server for neovim
-- lsp.nvim_workspace()

lsp.setup()
