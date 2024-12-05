return {
    "folke/snacks.nvim",
    opts = {
        gitbrowse = {
            remote_patterns = {
                { "^git@gitssh.jwn.app:(.+)%.git$", "https://git.jwn.app/%1" }
            },
            url_patterns = {
                ["git%.jwn%.app"] = {
                    branch = "/-/tree/{branch}",
                    file = "/-/blob/{branch}/{file}",
                    commit = "/-/commit/{commit}",
                }
            }
        }
    },
    keys = {
        { "<leader>gB",
            function()
                Snacks.gitbrowse({ branch = "main" })
            end,
            desc = "Git Browse (open)"
        },
        { "<leader>gY",
            function()
                Snacks.gitbrowse({
                    notify = false,
                    open = function(url)
                        vim.fn.setreg("+", url)
                        Snacks.notify(("Copied url - %s"):format(url))
                    end,
                    branch = "main"
                })
            end,
            desc = "Git Browse (copy)"
        },
    }
}
