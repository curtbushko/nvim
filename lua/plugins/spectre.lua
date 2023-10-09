return {
  {
    "nvim-pack/nvim-spectre",
    -- stylua: ignore
    keys = {
      -- disable default LazyVim keymaps
      { "<leader>sr", false },
      -- my keymaps
      { "<leader>fR", function() require("spectre").open() end, desc = " Replace in files (Spectre)" },
    },
  },
}
