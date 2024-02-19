vim.opt.relativenumber = true
vim.cmd.set("list listchars=tab:—·,trail:·")
vim.opt.scrolloff = 10

-- Indentation by Filetype
vim.api.nvim_create_autocmd("FileType", {
  pattern = "cs",
  callback = function ()
    vim.opt.shiftwidth = 4
    vim.opt.tabstop = 4
    vim.opt.softtabstop = 4
  end
})
