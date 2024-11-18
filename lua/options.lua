require "nvchad.options"

local o = vim.o
local api = vim.api

o.cursorlineopt = "both"
o.relativenumber = true

api.nvim_create_autocmd("textyankpost", {
  callback = function()
    vim.highlight.on_yank { timeout = 200 }
  end,
})
