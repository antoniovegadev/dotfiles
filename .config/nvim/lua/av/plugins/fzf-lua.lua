local fzf = require("fzf-lua")

fzf.setup({
  defaults = {
    file_icons = false
  },
  winopts = {
    col = 0.5,
    row = 0.5,
    height = 0.33
  },
})

local fzf_files = function()
  fzf.files({ winopts = { preview = { hidden = "hidden" } } })
end

local map = vim.keymap.set

map("n", "<leader>fb", fzf.buffers, { desc = "fzf buffers" })
map("n", "<leader>ff", fzf_files, { desc = "fzf files" })
map("n", "<leader>fg", fzf.live_grep, { desc = "fzf grep" })
