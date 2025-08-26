-- Bootstrap paq if not installed
local install_path = vim.fn.stdpath("data") .. "/site/pack/paqs/start/paq-nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.system({
    "git",
    "clone",
    "--depth=1",
    "https://github.com/savq/paq-nvim.git",
    install_path,
  })
  vim.cmd("packadd paq-nvim")
end

-- Load paq
local paq = require("paq")

-- List of plugins
paq({
  "savq/paq-nvim", -- Paq manages itself
  "echasnovski/mini.icons",
  "stevearc/oil.nvim",
  { "rose-pine/neovim", as = "rose-pine" },
  "tpope/vim-fugitive",
  { "nvim-treesitter/nvim-treesitter", branch = "main", build = ":TSUpdate" },
  "nvim-treesitter/nvim-treesitter-context",
  { "nvim-treesitter/nvim-treesitter-textobjects", branch = "main" },
  "ibhagwan/fzf-lua",
  "nvim-lualine/lualine.nvim",
})

-- automatically install missing plugins on startup
paq.install()

require("av.plugins.mini-icons")
require("av.plugins.oil")
require("av.plugins.rose-pine")
require("av.plugins.treesitter")
require("av.plugins.treesitter-textobjects")
require("av.plugins.fzf-lua")
require("av.plugins.lualine")
