return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {
    modes = {
      char = {
        jump_labels = true,
      },
      search = {
        enabled = true,
      },
    },
  },
  keys = {
    { "s", mode = { "n", "x", "o" }, false },
    { "<leader>/", false },
  },
}
