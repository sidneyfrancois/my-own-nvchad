local M = {}

M.statuscol = function()
  local builtin = require "statuscol.builtin"
  require("statuscol").setup {
    relculright = true,
    bt_ignore = {
      "nofile",
      "prompt",
      "terminal",
      "lazy",
    },
    ft_ignore = {
      "NvimTree",
      "dashboard",
      "nvcheatsheet",
      "dapui_watches",
      "dap-repl",
      "dapui_console",
      "dapui_stacks",
      "dapui_breakpoints",
      "dapui_scopes",
      "help",
      "vim",
      "alpha",
      "dashboard",
      "neo-tree",
      "Trouble",
      "noice",
      "lazy",
      "toggleterm",
    },
    segments = {
      { text = { builtin.foldfunc }, click = "v:lua.ScFa" },
      { text = { "%s" }, click = "v:lua.ScSa" },
      { text = { builtin.lnumfunc, " " }, click = "v:lua.ScLa" },
    },
  }
end

M.ufo = function()
  vim.o.foldcolumn = "1" -- '0' is not bad
  vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
  vim.o.foldlevelstart = 99
  vim.o.foldenable = true
  vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
  require("ufo").setup {
    provider_selector = function(bufnr, filetype, buftype)
      return { "treesitter", "indent" }
    end,
  }
end

return M
