return {
  {
    "SmiteshP/nvim-navbuddy",
    dependencies = {
      "SmiteshP/nvim-navic",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      local navbuddy = require("nvim-navbuddy")
      navbuddy.setup({
        window = {
          border = "none",
        },
        lsp = { auto_attach = true, preference = "nvim_lsp" },
      })
    end,

    keys = {
      { "<leader>n", "<CMD>Navbuddy<CR>", desc = " Navbuddy" },
    },
  },
}
