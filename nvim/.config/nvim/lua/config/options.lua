-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
-- LSP Server to use for Python.
-- Set to "basedpyright" to use basedpyright instead of pyright.
vim.g.lazyvim_python_lsp = "pyright"
-- Set to "ruff_lsp" to use the old LSP implementation version.
vim.g.lazyvim_python_ruff = "ruff"

-- Use absolute line numbers instead of relative
vim.opt.relativenumber = false

return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      mode = "tabs", -- <--- changes from "buffers" to "tabs"
    },
  },
}
