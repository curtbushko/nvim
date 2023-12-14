return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      plugins = {
        spelling = true,
        presets = {
          operators = true,
        },
      },
      icons = {
        breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
        separator = "   ", -- symbol used between a key and it's label
        group = "+ ", -- symbol prepended to a group
      },
    },
    config = function(_, opts)
      local wk = require("which-key")
      wk.setup(opts)
      wk.register({
        mode = { "n", "v" },
        ["<leader>b"] = { name = " Buffers" },
        -- Code menus
        ["<leader>d"] = { name = " Debug" },
        ["<leader>D"] = { name = " Devdocs" },
        ["<leader>c"] = { name = "󱙺 Code" },
        ["<leader>f"] = { name = " Find" },
        -- Git menus
        ["<leader>g"] = { name = " Git" },
        ["<leader>gd"] = { name = " DiffView" },
        ["<leader>gh"] = { name = " Hunks" },
        ["<leader>O"] = { name = " Obsidian" },

        ["<leader>s"] = { name = " Search" },
        ["<leader>t"] = { name = " Terminal" },
        ["<leader>T"] = { name = " Trouble" },
        ["<leader>u"] = { name = "󰍹 Ui" },
        ["<leader>un"] = { name = "󰀨 Noice" },
        ["<leader>uS"] = { name = " Sessions" },
        ["<leader>S"] = { name = "󰅪 Surround" },
        ["<leader>Sw"] = { name = " Word" },
      })
    end,
  },
}
