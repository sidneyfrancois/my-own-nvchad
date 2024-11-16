require "nvchad.options"

-- add yours here!

local o = vim.o
local api = vim.api

o.cursorlineopt ='both' -- to enable cursorline!
o.relativenumber = true

api.nvim_create_autocmd('textyankpost', {
  callback=function()
    vim.highlight.on_yank({ timeout=250 })
  end,
})


