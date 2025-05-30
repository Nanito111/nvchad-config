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

local statusline = require "configs.statusline"
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
    separator_style = statusline.sep_style,
    theme = "minimal",
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
    modules = {
      mode = statusline.mode,
      git = statusline.git,
      lsp = statusline.lsp,
      cursor = statusline.cursor,
      file = statusline.file,
    },
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

M.base46 = {
  theme = "flexoki",
  theme_toggle = { "flexoki", "flexoki-light" },
  transparency = true,
  hl_override = {
    St_file_sep = { bg = "NONE" },
    St_file_txt = { bg = "red", fg = "black" },
    St_lsp_sep = { bg = "NONE" },
    St_Pos_sep = { bg = "NONE" },
    St_CommandModeSep = { bg = "NONE" },
    St_InsertModeSep = { bg = "NONE" },
    St_TerminalModeSep = { bg = "NONE" },
    St_NormalModeSep = { bg = "NONE" },
    St_ConfirmModeSep = { bg = "NONE" },
    St_ReplaceModeSep = { bg = "NONE" },
    St_NTerminalModeSep = { bg = "NONE" },
    St_VisualModeSep = { bg = "NONE" },
    St_SelectModeSep = { bg = "NONE" },
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
