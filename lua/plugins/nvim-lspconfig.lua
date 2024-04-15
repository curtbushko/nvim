return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- disable a keymap
      keys[#keys + 1] = { "<leader>ca", false, mode = "n" }
      keys[#keys + 1] = { "<leader>cd", false }
      keys[#keys + 1] = { "<leader>cl", false }
      keys[#keys + 1] = { "<leader>cf", false }
      keys[#keys + 1] = { "<leader>cA", false }
      keys[#keys + 1] = { "<leader>cr", false }
      keys[#keys + 1] = { "<leader>wa", false }
      keys[#keys + 1] = { "<leader>wl", false }
      keys[#keys + 1] = { "<leader>wr", false }
      keys[#keys + 1] = { "<leader>cr", false }
      keys[#keys + 1] = { "<leader>e", false }
      keys[#keys + 1] = { "<leader>q", false }
      keys[#keys + 1] = { "<leader>ff", false }
    end,
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
        update_in_insert = true,
      },
    },
    keys = {
      { "<leader>ca", false },
      { "<leader>e", false },
      { "<leader>q", false },
    },
  },
}
