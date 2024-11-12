---@type ChadrcConfig
local M = {}

M.nvdash = {
  load_on_startup = true,
  header = {
    [[                                                                       ]],
    [[                                                                     ]],
    [[       ████ ██████           █████      ██                     ]],
    [[      ███████████             █████                             ]],
    [[      █████████ ███████████████████ ███   ███████████   ]],
    [[     █████████  ███    █████████████ █████ ██████████████   ]],
    [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
    [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
    [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
    [[                                                                       ]],
  },
}

M.colorify = {
  enabled = true,
  mode = "bg",
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
      "mode_custom",
      "cursor_custom",
      "file",
      "git_custom",
      "%=",
      "diagnostics",
      "lsp_msg",
      "lsp_custom",
    },
    modules = {
      mode_custom = statusline.mode_custom,
      git_custom = statusline.git_custom,
      lsp_custom = statusline.lsp_custom,
      cursor_custom = statusline.cursor_custom,
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
  theme = "gruvbox",
  transparency = false,
  hl_override = {
    St_NormalMode = { bold = true },
    St_InsertMode = { bold = true },
    St_ReplaceMode = { bold = true },
    St_VisualMode = { bold = true },
    St_TerminalMode = { bold = true },
    St_NTerminalMode = { bold = true },
    St_SelectMode = { bold = true },
    St_CommandMode = { bold = true },
    St_ConfirmMode = { bold = true },
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
    "omnisharp",
    "csharpier",
    "curlylint",
    "zls",
    "actionlint",
  },
}

return M
