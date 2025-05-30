---@type ChadrcConfig
local M = {}

M.nvdash = {
  load_on_startup = true,
  header = {
    "Colosenses 3:23",
    "",
    "Todo lo que hagan, háganlo de corazón,",
    "como para el Señor y no para los hombres,",
    "",
    "",
    "",
    "",
  },
}

M.colorify = {
  enabled = true,
  mode = "virtual",
}

M.cheatsheet = {
  theme = "simple",
}

M.lsp = {
  signature = true,
}

M.ui = {
  tabufline = {
    enabled = true,
    lazyload = true,
  },
  telescope = {
    enabled = true,
    style = "bordered",
  },
  statusline = {
    enabled = true,
    separator_style = "round",
    theme = "nano", -- default/vscode/vscode_colored/minimal/nano
    order = {
      "mode",
      "cursor",
      "file",
      "git",
      "%=",
      "diagnostics",
      "lsp_msg",
      "lsp",
    },
  },
}

M.base46 = {
  theme = "flexoki",
  theme_toggle = { "flexoki", "flexoki-light" },
  transparency = true,
  hl_override = {
    NvDashAscii = { fg = "white" },
  },
}

M.term = {
  sizes = {
    sp = 0.4,
    vsp = 0.5,
    ["bo sp"] = 0.4,
    ["bo vsp"] = 0.5,
  },
  float = {
    relative = "editor",
    row = 0.02,
    col = 0.068,
    width = 0.85,
    height = 0.85,
    border = "single",
  },
  winopts = {
    signcolumn = "no",
  },
}

M.mason = {
  pkgs = {
    "lua-language-server",
    "pyright",
    "ruff",
    "html-lsp",
    "css-lsp",
    "json-lsp",
    "curlylint",
    "zls",
    "actionlint",
    "typescript-language-server",
    "gopls",
    "some-sass-language-server",
    "prettierd",
  },
}

return M
