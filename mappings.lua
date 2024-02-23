local M = {}
M.disabled = {
  i = {
    ["<C-h>"] = "",
    ["<C-j>"] = "",
    ["<C-k>"] = "",
    ["<C-l>"] = "",
    ["<C-m>"] = "",
    ["<C-s>"] = "",
  },
  n = {
    ["<leader>fm"] = "",
    ["<C-s>"] = "",
  },
  v = {
    ["<leader>fm"] = "",
    ["<C-s>"] = "",
  }
}
M.general = {
  i = {
    ["<C-h>"] = { "<BS>", "backspace" },
    ["<C-j>"] = { "<CR>", "carriage return" },
    ["<C-k>"] = { "<DEL>", "delete" },
    ["<C-l>"] = { "<NL>", "linefeed" },
  },

  n = {
    ["<leader>fm"] = {
      function()
        require("conform").format({
          lsp_fallback = true,
          async = true,
        })
      end,
      "Format Buffer (Conform)"
    },
  },
  v = {
    ["<leader>fm"] = {
      function()
        require("conform").format({
          lsp_fallback = true,
          async = true,
        })
      end,
      "Format Buffer (Conform)"
    },
  }
}

return M
