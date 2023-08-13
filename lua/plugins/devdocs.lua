return {
  "luckasRanarison/nvim-devdocs",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    previewer_cmd = "glow", -- like glow
    cmd_args = { "-s dracula" }, -- example using glow { "-s", "dark", "-w", "80" }
  },
  keys = {
    { "<leader>Db", "<CMD>DevdocsOpenFloat bash<CR>", desc = "󱆃 Bash" },
    { "<leader>Dd", "<CMD>DevdocsOpenFloat docker<CR>", desc = "󰡨 Docker" },
    { "<leader>Dg", "<CMD>DevdocsOpenFloat go<CR>", desc = "󰟓 Golang" },
    { "<leader>DG", "<CMD>DevdocsOpenFloat git<CR>", desc = " Git" },
    { "<leader>Dj", "<CMD>DevdocsOpenFloat jq<CR>", desc = "󰘦 jq" },
    { "<leader>Dk", "<CMD>DevdocsOpenFloat kubernetes<CR>", desc = "󱃾 Kubernetes" },
    { "<leader>Dn", "<CMD>DevdocsOpenFloat nix<CR>", desc = "󱄅 Nix" },
    { "<leader>Dt", "<CMD>DevdocsOpenFloat terraform<CR>", desc = "󱁢 Terraform" },
    { "<leader>DF", "<CMD>DevdocsFetch<CR>", desc = "󰩃 Fetch" },
    {
      "<leader>DI",
      "<CMD>DevdocsInstall bash docker git go jq kubernetes nix terraform<CR>",
      desc = "󰇚 Install docs",
    },
    { "<leader>DU", "<CMD>DevdocsUpdateAll<CR>", desc = "󰚰 Update All" },
  },
}
