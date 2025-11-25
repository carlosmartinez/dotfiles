return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>ff",
      function()
        require("telescope.builtin").find_files({ hidden = true, no_ignore = false })
      end,
      desc = "Find Files (include hidden)",
    },
    {
      "<leader><space>",
      function()
        local root = require("lazyvim.util").root.get()
        require("telescope.builtin").find_files({ hidden = true, no_ignore = false, cwd = root })
      end,
      desc = "Find Files (Root Dir, include hidden)",
    },
    {
      "<leader>fF",
      function()
        require("telescope.builtin").find_files({ hidden = true, no_ignore = false, cwd = vim.loop.cwd() })
      end,
      desc = "Find Files (cwd, include hidden)",
    },
  },
  opts = function(_, opts)
    opts.defaults = opts.defaults or {}
    opts.defaults.file_ignore_patterns = { "^%.git/", "node_modules" }
    opts.defaults.vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
      "--hidden",
      "--glob",
      "!.git/*",
    }
  end,
}
