local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = {
  "pyright",
  "cssls",
  "html",
  "jsonls",
  "omnisharp",
  "glsl_analyzer",
  "gdscript",
}

for _, server in ipairs(servers) do
  Opts = {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
  local require_ok, conf_opts = pcall(require, "configs.servers." .. server)
  if require_ok then
    Opts = vim.tbl_deep_extend("force", conf_opts, Opts)
  end
  lspconfig[server].setup(Opts)
end
