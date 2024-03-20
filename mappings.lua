require "nvchad.mappings"

-- Disable mappings
local nomap = vim.keymap.del

nomap("i", "<C-h>")
nomap("i", "<C-j>")
nomap("i", "<C-k>")
nomap("n", "<C-s>")

-- Your mappings
local map = vim.keymap.set

map("i", "<C-j>", "<ENTER>", {desc="Enter"})
map("i", "<C-k>", "<DEL>", {desc="Delete"})
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>", {desc="your description"})
