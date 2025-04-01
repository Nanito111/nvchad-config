require "nvchad.mappings"

-- Disable mappings
local nomap = vim.keymap.del

nomap("i", "<C-h>")
nomap("i", "<C-j>")
nomap("i", "<C-k>")
nomap("n", "<C-s>")

-- Your mappings
local map = vim.keymap.set

map("i", "<C-j>", "<ENTER>", { desc = "Enter" })
map("i", "<C-k>", "<DEL>", { desc = "Delete" })
map({ "n", "v" }, "<leader>fm", function()
  require("conform").format {
    lsp_fallback = true,
    async = true,
  }
end, { desc = "Format Buffer" })
map("v", "p", "P", { desc = "Paste preserving yank" })
map("v", "P", "p", { desc = "Paste removing yank" })

-- Open Volt menu
-- Keyboard users
map({ "n", "v" }, "<C-t>", function()
  require("menu").open "default"
end, { desc = "VoltMenu open (keyboard)" })

-- mouse users + nvimtree users!
map({ "n", "v" }, "<RightMouse>", function()
  vim.cmd.exec '"normal! \\<RightMouse>"'

  local options = vim.bo.ft == "NvimTree" and "nvimtree" or "default"
  require("menu").open(options, { mouse = true })
end, { desc = "VoltMenu open (mouse)" })

-- better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

--text wrapping
map("n", "<leader>ww", function()
  vim.cmd.set "wrap"
end, { desc = "Wrap text" })
map("n", "<leader>wW", function()
  vim.cmd.set "nowrap"
end, { desc = "Unwrap text" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>", {desc="your description"})
