return {
  {
    "ray-x/go.nvim",
    dependencies = { -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      local consul_build_tags = function()
        local vim = vim
        local fn = vim.fn
        local cwd = fn.getcwd()
        if string.find(cwd, "enterprise") then
          return "consulent"
        end
        return ""
      end

      require("go").setup({
        lsp_cfg = true,
        lsp_keymaps = false,
        build_tags = consul_build_tags(),
      })
    end,
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
    build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
  },
}
