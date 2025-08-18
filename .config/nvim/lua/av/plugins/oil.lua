local detail = false
require("oil").setup({
  keymaps = {
    ["gd"] = {
      desc = "Toggle file detail view",
      callback = function()
        detail = not detail
        if detail then
          require("oil").set_columns({ "icon", "permissions", "size", "mtime" })
        else
          require("oil").set_columns({ "icon" })
        end
      end,
    },
  },

  float = {
    padding = 4,
    max_width = 100,
    max_height = 30,
  }
})

local map = vim.keymap.set
map("n", "-", require("oil").open_float, { desc = "Open oil in floating window" })

local aug = vim.api.nvim_create_augroup("OilLocalMaps", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  group = aug,
  pattern = "oil",
  callback = function(ev)
    map("n", "q", "<cmd>close<cr>", { buffer = ev.buf, silent = true })
  end,
})
