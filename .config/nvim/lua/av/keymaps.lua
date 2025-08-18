vim.g.mapleader = " "

local map = vim.keymap.set

map("n", "<C-h>", "<C-w>h", { desc = "Move left" })
map("n", "<C-j>", "<C-w>j", { desc = "Move down" })
map("n", "<C-k>", "<C-w>k", { desc = "Move up" })
map("n", "<C-l>", "<C-w>l", { desc = "Move right" })
map("n", "<leader>y", '"+y', { desc = "Yank to clipboard" })
map("n", "<leader>p", '"+p', { desc = "Paste from clipboard" })
map("n", "<leader>sr", ":%s/", { desc = "Search & Replace" })

map("t", "<Esc>", [[<C-\><C-n>]])

map("v", "<", "<gv", { desc = "Indent left and keep selection" })
map("v", ">", ">gv", { desc = "Indent right and keep selection" })
map("v", "<leader>y", '"+y', { desc = "Yank selection to clipboard" })
map("v", "<", "<gv", { desc = "Indent left and keep selection" })
map("v", ">", ">gv", { desc = "Indent right and keep selection" })
