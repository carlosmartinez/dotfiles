return {
  "mfussenegger/nvim-lint",
  opts = function(_, opts)
    -- Disable MD013 for markdownlint-cli2
    local markdownlint = require("lint").linters["markdownlint-cli2"]
    markdownlint.args = {
      "--config",
      vim.fn.expand("~/.markdownlint-cli2.jsonc"),
    }
  end,
}
