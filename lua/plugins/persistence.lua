return {
  {
    "folke/persistence.nvim",
    -- stylua: ignore
    keys = {
      -- disable default LazyVim keymaps
      { "<leader>ql", false },
      { "<leader>qd", false },
      { "<leader>qs", false },
      -- my own keymaps
      { "<leader>uSr", function() require("persistence").load() end, desc = "Restore Session" },
      { "<leader>uSl", function() require("persistence").load({ last = true }) end, desc = "Restore Last Session" },
      { "<leader>uSd", function() require("persistence").stop() end, desc = "Don't Save Current Session" },
    },
  },
}
