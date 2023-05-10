return {
  {
    "chentoast/marks.nvim",

    config = function()
      require("marks").setup({
        default_mappings = false,
        bookmark_0 = {
          sign = " ",
          virt_text = " Rebel scum!",
          annotate = false,
        },
        bookmark_1 = {
          sign = " ",
          virt_text = "  Join the Empire!",
          annotate = false,
        },
        bookmark_2 = {
          sign = " ",
          virt_text = " Squirrel!",

          annotate = false,
        },
        mappings = {
          set_bookmark0 = "m0",
          set_bookmark1 = "m1",
          set_bookmark2 = "m2",
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
      { "<leader>m0", "lua require('marks').set_bookmark0()", desc = "  Bookmark 0" },
      { "<leader>m1", "lua require('marks').set_bookmark1()", desc = "  Bookmark 1" },
      { "<leader>m2", "lua require('marks').set_bookmark1()", desc = "  Bookmark 2" },
      { "<leader>ml", "lua require('marks').next_bookmark()", desc = " Next Bookmark" },
      { "<leader>mh", "lua require('marks').prev_bookmark()", desc = " Previous Bookmark" },
      { "<leader>md", "lua require('marks').delete_bookmark()", desc = " Delete Bookmark" },
      { "<leader>mj", "lua require('marks').next()", desc = " Next Mark" },
      { "<leader>mk", "lua require('marks').previous()", desc = " Previous Mark" },
      { "<leader>mm", "lua require('marks').toggle()", desc = "  Mark Toggle" },
    },
  },
}
