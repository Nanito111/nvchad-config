return {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "ruff_format" },
  },

  format_after_save = function(bufnr)
    -- Disable with a global or buffer-local variable
    if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
      return
    end

    return { timeout_ms = 5000, lsp_fallback = true }
  end,
}
