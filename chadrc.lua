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
  changed_themes = {
    gruvbox = {
      base_16 = { base00 = "#1D2021" },
      base_30 = { black = "#1D2021", black2 = "#282828" },
    },
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
  },
}

return M
