local nvlsp = require "nvchad.configs.lspconfig"
local lspconfig = require "lspconfig"

nvlsp.defaults()

local servers = {
  "pyright",
  -- "ruff",
  "cssls",
  "html",
  "jsonls",
  "gdscript",
  "zls",
  "ts_ls",
  "gopls",
  "somesass_ls",
}

for _, server in ipairs(servers) do
  Opts = {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
  local require_ok, conf_opts = pcall(require, "configs.servers." .. server)
  if require_ok then
    Opts = vim.tbl_deep_extend("force", conf_opts, Opts)
  end
  lspconfig[server].setup(Opts)
end

-- enable plugin "lsp_lines"
vim.diagnostic.config {
  virtual_lines = true,
  virtual_text = false,
}
