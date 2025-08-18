require("nvim-treesitter").setup({
  ensure_installed = {
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
  indent = { enable = true },
  auto_install = false,
  highlight = {
    enable = true,
  },
})
