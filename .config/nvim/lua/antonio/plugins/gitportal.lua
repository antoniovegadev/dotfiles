return {
    'trevorhauter/gitportal.nvim',
    config = function()
        local gitportal = require("gitportal")

        vim.keymap.set("n", "<leader>gp", function() gitportal.open_file_in_browser() end)
    end
}
