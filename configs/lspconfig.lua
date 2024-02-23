local config = require("plugins.configs.lspconfig")

local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require "lspconfig"

local servers = {
  "pyright",
  "cssls",
  "html",
  "jsonls",
  "omnisharp",
}

for _, server in ipairs(servers) do
  Opts = {
    on_attach = on_attach,
    capabilities = capabilities,
  }
  local require_ok, conf_opts = pcall(require, "custom.configs.servers." .. server)
  if require_ok then
    Opts = vim.tbl_deep_extend("force", conf_opts, Opts)
  end
  lspconfig[server].setup(Opts)
end
