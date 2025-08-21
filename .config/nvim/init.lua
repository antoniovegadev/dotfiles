require("av.options")
require("av.keymaps")
require("av.plugins")

vim.api.nvim_create_autocmd('FileType', {
  pattern = {
    "astro",
    "css",
    "json",
    "lua",
    "markdown_inline",
    "markdown",
    "ruby",
    "swift",
    "terraform",
    "toml",
    "typescript",
    "vim",
    "vimdoc",
    "yaml",
  },
  callback = function()
    vim.treesitter.start()
    vim.wo.foldmethod = "expr"
    vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    vim.opt.foldlevel = 99
  end,
})
