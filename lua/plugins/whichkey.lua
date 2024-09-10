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
      spec = {
        { "<leader>b", group = "buffers", icon = { icon = " ", color = "yellow" } },

        -- Code menus
        { "<leader>d", group = "debug", icon = { icon = " ", color = "yellow" } },
        { "<leader>D", group = "devdocs", icon = { icon = " ", color = "yellow" } },
        { "<leader>c", group = "code", icon = { icon = "󱙺 ", color = "yellow" } },
        { "<leader>f", group = "find", icon = { icon = " ", color = "yellow" } },
        -- Git menus
        { "<leader>g", group = "git", icon = { icon = " ", color = "yellow" } },
        { "<leader>gd", group = "diffview", icon = { icon = " ", color = "yellow" } },
        { "<leader>gh", group = "hunks", icon = { icon = " ", color = "yellow" } },
        { "<leader>O", group = "obsidian", icon = { icon = " ", color = "yellow" } },

        { "<leader>s", group = "search", icon = { icon = " ", color = "yellow" } },
        { "<leader>t", group = "terminal", icon = { icon = " ", color = "yellow" } },
        { "<leader>T", group = "Trouble", icon = { icon = " ", color = "yellow" } },
        { "<leader>u", group = "Ui", icon = { icon = "󰍹 ", color = "yellow" } },
        { "<leader>un", group = "noice", icon = { icon = "󰀨 ", color = "yellow" } },
        { "<leader>Sw", group = "word", icon = { icon = " ", color = "yellow" } },
      },
    },
  },
}
