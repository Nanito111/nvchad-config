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
    theme = "vscode",
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
  theme = "gruvchad",
  transparency = true,
  theme_toggle = {
    "wombat",
    "gruvchad",
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
