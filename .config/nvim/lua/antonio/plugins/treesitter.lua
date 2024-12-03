return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    config = function()
        local treesitter = require("nvim-treesitter.configs")
        treesitter.setup {
            ensure_installed = {
                "astro",
                "css",
                "json",
                "lua",
                "markdown",
                "markdown_inline",
                "swift",
                "typescript",
                "vim",
                "vimdoc",
            },
            indent = { enable = true },
            auto_install = false,
            highlight = {
                enable = true,
            }
        }
    end
}
