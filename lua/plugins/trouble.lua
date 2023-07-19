return {
  {
    "folke/trouble.nvim",
    keys = {
      -- disable default LazyVim keymaps
      { "<leader>xx", false },
      { "<leader>xX", false },
      { "<leader>xL", false },
      { "<leader>xQ", false },
      { "<leader>tt", "<CMD>TroubleToggle<CR>", desc = " Trouble Toggle" },
      { "<leader>tw", "<CMD>TroubleToggle workspace_diagnostics<CR>", desc = " Workspace Diagnostics" },
      { "<leader>td", "<CMD>TroubleToggle document_diagnostics<CR>", desc = " Document Diagnostics" },
      { "<leader>tq", "<CMD>TroubleToggle quickfix<CR>", desc = "󰤇 Quickfix" },
      { "<leader>tl", "<CMD>TroubleToggle loclist<CR>", desc = " Local List" },
      { "<leader>tr", "<CMD>TroubleToggle lsp_references<CR>", desc = " LSP References" },
    },
  },
}
