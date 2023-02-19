return {
  "akinsho/bufferline.nvim",
  keys = {
    { "<leader>bb", "<CMD>Telescope buffers<CR>", desc = " Buffers (telescope)" },
    { "<leader>bc", "<CMD>bd<CR>", desc = " Close Buffer" },
    { "<leader>bC", "<CMD>bdelete!<CR>", desc = "Force Close Buffer" },
    { "<leader>bj", "<CMD>BufferLinePick<CR>", desc = "Jump" },
    { "<leader>bn", "<CMD>tabnew<CR>", desc = " New tab" },
    { "<leader>bp", "<CMD>BufferLinePickClose<CR>", desc = "Pick to close" },
    { "<leader>bs", "<CMD>BufferLineSortByTabs<CR>", desc = "Sort by tabs" },
  },
}
