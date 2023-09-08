return {
  {
    "williamboman/mason.nvim",
    ensure_installed = {
      "gopls", -- golang
      "rust_analyzer", -- rust
      "sumneko_lua", --lua
    },
    -- auto-install configured servers (with lspconfig)
    automatic_installation = true, -- not the same as ensure_installed
    keys = {
      { "<leader>cm", false },
      { "<leader>um", "<cmd>Mason<cr>", desc = "Mason" },
    },
  },
}
