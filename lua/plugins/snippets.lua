return {
  {
    "rafamadriz/friendly-snippets",
    opt = true,
  },

  {
    "L3MON4D3/LuaSnip",
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
      require("luasnip.loaders.from_vscode").load({ paths = { "./lua/config/csnippets" } })
    end,
  },
}
