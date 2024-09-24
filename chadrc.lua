---@type ChadrcConfig
local M = {}

M.ui = {
  tabufline = {
    lazyload = true,
    enabled = true,
  },
  telescope = {
    style = "bordered",
  },
  statusline = {
    theme = "default",
    separator_style = "arrow",
    order = require("nano_statusline").order,
    modules = require("nano_statusline").modules,
  },
  nvdash = {
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
  },
}

M.term = {
  sizes = { sp = 0.4, vsp = 0.5 },
  float = {
    relative = "editor",
    row = 0.05,
    col = 0.068,
    width = 0.85,
    height = 0.85,
    border = "single",
  },
}

M.base46 = {
  theme = "kanagawa",
  transparency = true,
  theme_toggle = {
    "wombat",
    "kanagawa",
  },
}

M.mason = {
  pkgs = {
    "lua-language-server",
    "black",
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
