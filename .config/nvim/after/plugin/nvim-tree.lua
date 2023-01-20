require("nvim-tree").setup()

vim.keymap.set("n", "<leader>ot", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>of", vim.cmd.NvimTreeFindFile)
