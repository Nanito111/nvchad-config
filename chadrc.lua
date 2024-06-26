---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "wombat",
  transparency = true,
  tabufline = {
    lazyload = true,
    enabled = true,
  },
  telescope = {
    style = "bordered",
  },
  statusline = {
    theme = "default",
    separator_style = "round",
    order = require("nano_statusline").order,
    modules = require("nano_statusline").modules,
  },
  theme_toggle = {
    "wombat",
    "chocolate",
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

return M
