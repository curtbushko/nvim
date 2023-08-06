return {
  "kylechui/nvim-surround",
  config = function()
    require("nvim-surround").setup({
      {
        -- Configuration here, or leave empty to use defaults
      },
    })
  end,

  version = "*", -- Use for stability; omit to use `main` branch for the latest features
  event = "VeryLazy",
  keys = {
    { "<leader>Swb", "<Plug>(nvim-surround-insert)b<CR>", desc = "Bracket" },
  },
}
