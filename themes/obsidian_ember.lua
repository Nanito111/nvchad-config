-- Credits to original https://github.com/Lvzitan/obsidian-ember-theme

local M = {}

M.base_30 = {
  white = "#d3d3d3",
  darker_black = "#222222",
  black = "#222222", --  nvim bg
  black2 = "#222222",
  one_bg = "#373d49",
  one_bg2 = "#464c58",
  one_bg3 = "#2b2b2b",
  grey = "#585858",
  grey_fg = "#444444",
  grey_fg2 = "#606672",
  light_grey = "#646a76",
  red = "#ff6464",
  baby_pink = "#de878f",
  pink = "#d57780",
  line = "#333333", -- for lines like vertsplit
  green = "#729cff",
  vibrant_green = "#76c793",
  blue = "#eeeeee",
  nord_blue = "#ffffff",
  yellow = "#ffcc00",
  sun = "#e0c247",
  purple = "#555555",
  dark_purple = "#bd5e91",
  teal = "#729cff",
  orange = "#cd6316",
  cyan = "#00c3a5",
  statusline_bg = "#222222",
  lightbg = "#555555",
  pmenu_bg = "#333333",
  folder_bg = "#cd6316",
}

M.base_16 = {
  base00 = "#1e1e1e",
  base01 = "#1e1e1e",
  base02 = "#2d2d2d",
  base03 = "#333333",
  base04 = "#d3d3d3",
  base05 = "#aaaaaa",
  base06 = "#ECEFF4",
  base07 = "#8FBCBB",
  base08 = "#ff8548",
  base09 = "#ffffff",
  base0A = "#ff8548",
  base0B = "#848484",
  base0C = "#eeeeee",
  base0D = "#eeeeee",
  base0E = "#ffffff",
  base0F = "#eeeeee",
}

M.polish_hl = {
  Comment = {
    italic = true
  },
  PmenuSel = {
    fg = "#ffffff",
  },
  CmpItemAbbrMatch = {
    fg = M.base_16.base08
  },
  CmpItemAbbrMatchDefault = {
    bold = true,
    fg = M.base_16.base08
  },
  SpellBad = {
    sp = M.base_30.red
  },
  Cursor = {
    bg = M.base_16.base08
  },
  CursorColumn = {
    bg = M.base_16.base08
  },
  CmpItemKindEnumMember = {
    fg = M.base_16.base08
  }
}
M.type = "dark"

M = require("base46").override_theme(M, "obsidian_ember")

return M
