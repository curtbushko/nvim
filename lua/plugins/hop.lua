return {
  {
    "phaazon/hop.nvim",
    config = function()
      require("hop").setup({
        keys = "etovxqpdygfblzhckisuran",
      })
    end,
    keys = {
      { "<leader>h", "<CMD>HopChar1<CR>", desc = " Hop Char" },
    },
  },
}
