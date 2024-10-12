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
    theme = "minimal",
    separator_style = "round",
    order = {
      "cursor",
      "git",
      "%=",
      "diagnostics",
      "mode",
      "file",
      "%=",
      "lsp_msg",
      "lsp",
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
  theme = "wombat",
  transparency = true,
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
