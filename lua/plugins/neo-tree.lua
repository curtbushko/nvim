return {
  {
    "nvim-neo-tree/neo-tree.nvim",

    opts = {
      window = {
        position = "float",
      },
    },
    keys = {
      {
        "<leader>fe",
        function()
          require("neo-tree.command").execute({ toggle = true, dir = require("lazyvim.util").get_root() })
        end,
        desc = " Explorer (root dir)",
      },
      {
        "<leader>fE",
        function()
          require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
        end,
        desc = " Explorer (cwd)",
      },
      { "<leader>e", false },
      { "<leader>E", false },
    },
  },
}
