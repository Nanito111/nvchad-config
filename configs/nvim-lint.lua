local lint = require("lint")

lint.linters_by_ft = {
  python = { "ruff" },
}

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost" }, {
  callback = function()
    lint.try_lint()
  end,
})

return lint
