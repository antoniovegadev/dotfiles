return {
    "folke/snacks.nvim",
    opts = {
        gitbrowse = {
            remote_patterns = {
                { "^git@gitssh.jwn.app:(.+)%.git$"    , "https://git.jwn.app/%1" },
                { "^(https?://.*)%.git$"              , "%1" },
                { "^git@(.+):(.+)%.git$"              , "https://%1/%2" },
                { "^git@(.+):(.+)$"                   , "https://%1/%2" },
                { "^git@(.+)/(.+)$"                   , "https://%1/%2" },
                { "^ssh://git@(.*)$"                  , "https://%1" },
                { "^ssh://([^:/]+)(:%d+)/(.*)$"       , "https://%1/%3" },
                { "^ssh://([^/]+)/(.*)$"              , "https://%1/%2" },
                { "ssh%.dev%.azure%.com/v3/(.*)/(.*)$", "dev.azure.com/%1/_git/%2" },
                { "^https://%w*@(.*)"                 , "https://%1" },
                { "^git@(.*)"                         , "https://%1" },
                { ":%d+"                              , "" },
                { "%.git$"                            , "" },
            },
            url_patterns = {
                ["github%.com"] = {
                    branch = "/tree/{branch}",
                    file = "/blob/{branch}/{file}#L{line_start}-L{line_end}",
                    commit = "/commit/{commit}",
                },
                ["git%.jwn%.app"] = {
                    branch = "/-/tree/{branch}",
                    file = "/-/blob/{branch}/{file}#L{line_start}-L{line_end}",
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
                    branch = "main",
                    url_patterns = {
                        ["github%.com"] = {
                            file = "/blob/{branch}/{file}",
                        },
                        ["git%.jwn%.app"] = {
                            file = "/-/blob/{branch}/{file}",
                        }
                    }
                })
            end,
            desc = "Git Browse (copy)"
        },
        { "<leader>glY",
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
                        },
                        ["git%.jwn%.app"] = {
                            file = "/-/blob/{branch}/{file}#L{line_start}-L{line_end}",
                        }
                    }
                })
            end,
            mode = { "n", "v" },
            desc = "Git Browse (copy) with lines"
        },
    }
}
