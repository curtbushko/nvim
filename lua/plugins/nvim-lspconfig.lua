return {
  {
    "nvim-lspconfig",
    dependencies = {
      {
        "SmiteshP/nvim-navbuddy",
        dependencies = {
          "SmiteshP/nvim-navic",
          "MunifTanjim/nui.nvim",
        },
        opts = { lsp = { auto_attach = true } },
      },
    },
    opts = {
      diagnostics = {
        virtual_text = false,
      },
    },
    keys = {
      { "<leader>cl", false },
      { "<leader>cr", false },
    },
  },
}
