local lint = require "lint"

lint.linters_by_ft = {
  python = { "ruff" },
  -- html = { "curlylint" },
}

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
  callback = function()
    lint.try_lint()
  end,
})

return lint
