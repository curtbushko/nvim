return {
  {
    "epwalsh/obsidian.nvim",
    config = function()
      require("obsidian").setup({
        dir = "~/Sync/KB",
        daily_notes = {
          folder = "daily",
        },
      })
    end,
  },
}
