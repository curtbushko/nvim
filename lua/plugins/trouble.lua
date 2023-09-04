return {
  {
    "folke/trouble.nvim",
    keys = {
      -- disable default LazyVim keymaps
      { "<leader>xx", false },
      { "<leader>xX", false },
      { "<leader>xL", false },
      { "<leader>xQ", false },
      { "<leader>Tt", "<CMD>TroubleToggle<CR>", desc = " Trouble Toggle" },
      { "<leader>Tw", "<CMD>TroubleToggle workspace_diagnostics<CR>", desc = " Workspace Diagnostics" },
      { "<leader>Td", "<CMD>TroubleToggle document_diagnostics<CR>", desc = " Document Diagnostics" },
      { "<leader>Tq", "<CMD>TroubleToggle quickfix<CR>", desc = "󰤇 Quickfix" },
      { "<leader>Tl", "<CMD>TroubleToggle loclist<CR>", desc = " Local List" },
      { "<leader>Tr", "<CMD>TroubleToggle lsp_references<CR>", desc = " LSP References" },
    },
  },
}
