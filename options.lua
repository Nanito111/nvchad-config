require "nvchad.options"

vim.cmd.set "list listchars=tab:-·,trail:·"
vim.cmd.set "nowrap"
vim.cmd.set "shiftwidth=0"
vim.opt.scrolloff = 10

-- AutoFormating Toggle
vim.api.nvim_create_user_command("FormatDisable", function(args)
  if args.bang then
    -- FormatDisable! will disable formatting just for this buffer
    vim.b.disable_autoformat = true
  else
    vim.g.disable_autoformat = true
  end
end, {
  desc = "Disable autoformat-on-save",
  bang = true,
})

vim.api.nvim_create_user_command("FormatEnable", function()
  vim.b.disable_autoformat = false
  vim.g.disable_autoformat = false
end, {
  desc = "Re-enable autoformat-on-save",
})

-- Indentation by Filetype
vim.api.nvim_create_autocmd("FileType", {
  pattern = "cs",
  callback = function()
    vim.opt.tabstop = 4
    vim.opt.softtabstop = 4
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "gdscript",
  command = "set tabstop=4 softtabstop=4 noexpandtab",
})
-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
