---@type ChadrcConfig
local M = {}

M.ui =
{
  theme = "melange",
  cmp = {
    icons = true,
    lspkind_text = true,
    selected_item_bg = "colored",
  },
  lsp = {
    signature = {
      disabled = true
    }
  },

  tabufline = {
    lazyload = true,
    enabled = true,
  },
  statusline = {
    theme = "default",
    separator_style = "block"
  },
  telescope = {
    style = "bordered",
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

  lsp_semantic_tokens = true,
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"
return M
