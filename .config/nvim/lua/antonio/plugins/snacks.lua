return {
    "folke/snacks.nvim",
    opts = {
        gitbrowse = {
            config = function(opts, defaults)
                table.insert(opts.remote_patterns, { "^git@gitssh.jwn.app:(.+)%.git$", "https://git.jwn.app/%1" })
                opts.url_patterns["git%.jwn%.app"] = {
                    branch = "/-/tree/{branch}",
                    file = "/-/blob/{branch}/{file}",
                    commit = "/-/commit/{commit}",
                }
            end
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
                    branch = "main",
                    url_patterns = {
                        ["github%.com"] = {
                            file = "/blob/{branch}/{file}",
                        },
                    }
                })
            end,
            desc = "Git Browse (copy)"
        },
        { "<leader>gYl",
            function()
                Snacks.gitbrowse({
                    notify = false,
                    open = function(url)
                        vim.fn.setreg("+", url)
                        Snacks.notify(("Copied url - %s"):format(url))
                    end,
                    branch = "main",
                    url_patterns = {
                        ["github%.com"] = {
                            file = "/blob/{branch}/{file}#L{line_start}-L{line_end}",
                        }
                    }
                })
            end,
            mode = { "n", "v" },
            desc = "Git Browse (copy)"
        },
    }
}
