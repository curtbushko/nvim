local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- LSP
map("n", "gd", "<CMD>Telescope lsp_definitions<CR>")
map("n", "gp", "<CMD>Telescope peek_definition<CR>")
map("n", "gi", "<CMD>Telescope lsp_implementations<CR>")
map("n", "gr", "<CMD>Telescope lsp_references<CR>")
map("n", "gt", "<CMD>Telescope lsp_type_definitions<CR>")
map("n", "gb", "<C-o>", { desc = "Go back" })

-- Nice to haves

map("n", "<leader>c", "<CMD>bd<CR>", { remap = true, desc = " Close Buffer" })
map("n", "<leader>j", "<C-f>", { remap = true, silent = true, desc = " Screen down" })
map("n", "<leader>k", "<C-b>", { remap = true, silent = true, desc = " Screen up" })

map(
  "n",
  "<leader>/",
  "<CMD>lua require('Comment.api').toggle.linewise.current()<CR>",
  { remap = true, desc = " Comment" }
)

map(
  "v",
  "<leader>/",
  "<CMD>lua require('Comment.api').toggle.linewise.current()<CR>",
  { remap = true, desc = " Comment" }
)

-- Yanky
map("n", "y", "<Plug>(YankyYank)", { remap = true, silent = true })
map("n", "p", "<Plug>(YankyPutAfter)", { remap = true, silent = true })
map("n", "P", "<Plug>(YankyPutBefore)", { remap = true, silent = true })
map("n", "gp", "<Plug>(YankyGPutAfter)", { remap = true, silent = true })
map("n", "gP", "<Plug>(YankyGPutBefore)", { remap = true, silent = true })
map("n", "<c-n>", "<Plug>(YankyCycleForward)", { remap = true, silent = true })
map("n", "<c-p>", "<Plug>(YankyCycleBackward)", { remap = true, silent = true })

-- DAP mappings:
map("n", "<F1>", ":lua require('dap').toggle_breakpoint()<CR>", { remap = true, silent = true })
map("n", "<F2>", ":GoDebug<CR>", { remap = true, silent = true })
map("n", "<F3>", ":lua require('dap').step_over()<CR>", { remap = true, silent = true })
map("n", "<F4>", ":lua require('dap').step_into()<CR>", { remap = true, silent = true })
map("n", "<F5>", ":lua require('dap').step_out()<CR>", { remap = true, silent = true })
map("n", "<F6>", ":GoDebug -s<CR>", { remap = true, silent = true }) -- stop
map("n", "<F7>", ":lua require('dap').terminate()<CR>", { remap = true, silent = true })
map("n", "<F8>", ":GoDebug -R<CR>", { remap = true, silent = true }) -- restart
map("n", "<leader>db", ":lua require('dap').toggle_breakpoint()<CR>", { remap = true, silent = true })

-- Stay in indent mode
map("v", "<", "<gv", { remap = true, desc = "unindent line" })
map("v", ">", ">gv", { remap = true, desc = "indent line" })
