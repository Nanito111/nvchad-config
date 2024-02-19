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

lspconfig.pyright.setup {
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",
      }
    }
  }
}

-- lspconfig.omnisharp.setup {
--   cmd = { "omnisharp" },
--   filetypes = { "cs", "vb" },
--   root_dir = function(fname)
--     return lspconfig.util.root_pattern '*.sln' (fname)
--   end,
--
-- }
