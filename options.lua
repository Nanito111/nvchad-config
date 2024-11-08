require "nvchad.options"

vim.cmd.set "nowrap"
vim.cmd.set "shiftwidth=0"
vim.opt.scrolloff = 15
vim.cmd.set "listchars=tab:\\ \\ ,trail:·,eol:↴"
vim.cmd.set "list"

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
  callback = function()
    vim.opt.tabstop = 4
    vim.opt.softtabstop = 4
    vim.cmd.set "noexpandtab"
  end,
})

vim.o.cursorlineopt = "both"
vim.cmd.set "guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:block-blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,r-cr:hor20,o:hor50"

-- vim.api.nvim_create_autocmd("ModeChanged", {
--   callback = function()
--     if vim.fn.mode() == "n" then
--       vim.api.nvim_get_hl_by_name "hola"
--     end
--   end,
-- })
