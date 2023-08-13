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
        -- Golang menus
        ["<leader>g"] = { name = "󰟓 Golang" },
        ["<leader>gB"] = { name = " Build & 󰤑 Test" },
        ["<leader>gc"] = { name = " Coverage" },
        ["<leader>gd"] = { name = " Debug" },
        ["<leader>gF"] = { name = "  Format" },
        ["<leader>gl"] = { name = "󰃣 Lint" },
        ["<leader>gs"] = { name = "󰟌 Source Analysis" },
        ["<leader>gT"] = { name = " Tags" },
        -- Git menus
        ["<leader>G"] = { name = " Git" },
        ["<leader>Gd"] = { name = " DiffView" },
        ["<leader>Gh"] = { name = " Hunks" },
        ["<leader>l"] = { name = " LSP" },
        -- Octo
        ["<leader>o"] = { name = " Octo" },
        ["<leader>oc"] = { name = " Comments" },
        ["<leader>oi"] = { name = " Issues" },
        ["<leader>op"] = { name = " PR" },
        ["<leader>or"] = { name = " Review" },
        ["<leader>oR"] = { name = " Reaction" },
        ["<leader>O"] = { name = " Obsidian" },
        ["<leader>s"] = { name = " Search" },
        ["<leader>t"] = { name = " Trouble" },
        ["<leader>u"] = { name = "󰍹 Ui" },
        ["<leader>un"] = { name = "󰀨 Noice" },
        ["<leader>uS"] = { name = " Sessions" },
        ["<leader>S"] = { name = "󰅪 Surround" },
        ["<leader>Sw"] = { name = " Word" },
      })
    end,
  },
}
