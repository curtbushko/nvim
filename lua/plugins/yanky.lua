return {
  {
    "gbprod/yanky.nvim",
    config = function()
      require("yanky").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        --)
        highlight = {
          timer = 150,
        },
        ring = {
          storage = "sqlite",
        },
      })
    end,
  },

  {
    "kkharji/sqlite.lua",
  },
}
