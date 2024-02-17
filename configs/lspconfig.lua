local config = require("plugins.configs.lspconfig")

local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require "lspconfig"

local servers = {
  "pyright",
  "cssls",
  "html",
  "jsonls",
  "csharp_ls",
  -- "omnisharp",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- lspconfig.omnisharp.setup{
--   cmd={"omnisharp"},
-- }

