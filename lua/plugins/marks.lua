return {
  {
    "chentoast/marks.nvim",

    config = function()
      require("marks").setup({
        default_mappings = false,
        cycle = true,
        mappings = {
          next_bookmark = "ml",
          prev_bookmark = "mh",
          delete_bookmark = "md",
          next = "mj",
          prev = "mk",
          toggle = "mm",
        },
      })
    end,
    keys = {
      { "<leader>mj", "lua require('marks').next()", desc = "  Next Mark" },
      { "<leader>mk", "lua require('marks').previous()", desc = "  Previous Mark" },
      { "<leader>mt", "lua require('marks').toggle( require('marks').toggle_signs())", desc = "  Mark Toggle" },
    },
  },
}
