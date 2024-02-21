local conform = require("conform")

conform.setup({
  formatters_by_ft = {
    python = { "black" },
    csharp = { "csharpier" }
  },

  format_on_save = function(bufnr)
    -- Disable with a global or buffer-local variable
    if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
      return
    end

    return { timeout_ms = 5000, lsp_fallback = true, async = true }
  end,
})

return conform
