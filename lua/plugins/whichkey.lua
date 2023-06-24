return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      plugins = { spelling = true },
      icons = {
        breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
        separator = "  ", -- symbol used between a key and it's label
        group = "+ ", -- symbol prepended to a group
      },
    },
    config = function(_, opts)
      local wk = require("which-key")
      wk.setup(opts)
      wk.register({
        mode = { "n", "v" },
        ["<leader>b"] = { name = "﬘ Buffers" },
        -- Code menus
        ["<leader>d"] = { name = "ﮊ Debug" },
        ["<leader>f"] = { name = " Find" },
        -- Golang menus
        ["<leader>g"] = { name = "ﳑ Golang" },
        ["<leader>gB"] = { name = "  Build & ﭧ Test" },
        ["<leader>gc"] = { name = "  Coverage" },
        ["<leader>gd"] = { name = "ﮊ Debug" },
        ["<leader>gF"] = { name = "ﱑ Format" },
        ["<leader>gl"] = { name = " Lint" },
        ["<leader>gs"] = { name = "ﳊ Source Analysis" },
        ["<leader>gT"] = { name = " Tags" },
        -- Git menus
        ["<leader>G"] = { name = " Git" },
        ["<leader>Gd"] = { name = " DiffView" },
        ["<leader>Gh"] = { name = " Hunks" },

        ["<leader>l"] = { name = " LSP" },
        ["<leader>m"] = { name = " Marks" },
        ["<leader>o"] = { name = " Obsidian" },
        ["<leader>S"] = { name = " Sessions" },
        ["<leader>t"] = { name = " Trouble" },
        ["<leader>u"] = { name = " Ui" },
        ["<leader>un"] = { name = " Noice" },
      })
    end,
  },
}
