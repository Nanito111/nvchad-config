local M = {}
M.disabled = {
  i = {
    ["<C-h>"] = "",
    ["<C-j>"] = "",
    ["<C-k>"] = "",
    ["<C-l>"] = "",
    ["<C-m"] = "",
  }
}
M.general = {
  i = {
    ["<C-h>"] = {"<BS>", "backspace"},
    ["<C-j>"] = {"<ENTER>", "carriage return"},
    ["<C-k>"] = {"<DEL>", "delete"},
    ["<C-l>"] = {"<NL>", "linefeed"},
  }
}

return M
