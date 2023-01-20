local builtin = require('telescope.builtin')
local themes = require('telescope.themes')
local opts = themes.get_dropdown {
  previewer = false
}

vim.keymap.set('n', '<leader>pf', function()
  builtin.find_files(opts)
end)
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
