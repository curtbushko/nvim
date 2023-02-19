local Util = require("lazyvim.util")

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

-- Nice to haves
map("n", "<TAB>", "<CMD>BufferLineCycleNext<cr>", { remap = true, desc = "Next buffer tab" })
map("n", "<S-TAB>", "<CMD>BufferLineCyclePrev<cr>", { remap = true, desc = "Previous buffer tab" })
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
  "<ESC><CMD>lua require('Comment.api').locked('toggle.linewise')(vim.fn.visualmode())<CR>",
  { remap = true, desc = " Comment" }
)

-- lazygit
map("n", "<leader>Gl", function()
  Util.float_term({ "lazygit" }, { cwd = Util.get_root() })
end, { desc = "Lazygit (root dir)" })
map("n", "<leader>Gl", function()
  Util.float_term({ "lazygit" })
end, { desc = "Lazygit (cwd)" })

-- LSP
map("n", "gd", "<CMD>Telescope lsp_definitions<CR>")
map("n", "gp", "<CMD>Telescope peek_definition<CR>")
map("n", "gi", "<CMD>Telescope lsp_implementations<CR>")
map("n", "gr", "<CMD>Telescope lsp_references<CR>")
map("n", "gt", "<CMD>Telescope lsp_type_definitions<CR>")
map("n", "gb", "<C-o>", { desc = "Go back" })
map("n", "<leader>cgd", "<CMD>Telescope lsp_definitions<CR>", { desc = "ﰍ Definitions" })
map("n", "<leader>cgi", "<CMD>Telescope lsp_implementations<CR>", { desc = "  Implementations" })
map("n", "<leader>cgr", "<CMD>Telescope lsp_references<CR>", { desc = " References" })

map("n", "<leader>ca", "<CMD>lua vim.lsp.buf.code_action()<CR>", { desc = " Code Action" })
map("n", "<leader>cD", "<CMD>Telescope diagnostics<CR>", { desc = " Diagnostics" })
map("n", "<leader>cd", "<CMD>Telescope lsp_type_definitions<CR>", { desc = " Type Definitions" })
map("n", "<leader>cf", "<CMD>lua vim.lsp.buf.formatting()<CR>", { desc = " Format" })
map("n", "<leader>ch", "<CMD>lua vim.lsp.buf.signature_help()<CR>", { desc = "ﰠ Signature Help" })
map("n", "<leader>cK", "<CMD>lua vim.lsp.buf.hover()<CR>", { desc = " Hover" })
map("n", "<leader>cp", "<CMD>Lspsaga peek_definition<CR>", { desc = " Peek" })
map("n", "<leader>cq", "<CMD>lua vim.diagnostic.setloclist()<CR>", { desc = " Quickfix" })
map("n", "<leader>cr", "<CMD>lua vim.lsp.buf.rename()<CR>", { desc = " Rename" })
map("n", "<leader>cs", "<CMD>Telescope lsp_document_symbols<CR>", { desc = " Document Symbols" })
map("n", "<leader>cS", "<CMD>Telescope lsp_dynamic_workspace_symbols<CR>", { desc = " Workspace Symbols" })
-- map("n", "<leader>   w = { function() require("telescope.builtin").lsp_workspace_symbols() end, "Workspace symbols" },

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

-- UI
map("n", "<leader>uf", require("lazyvim.plugins.lsp.format").toggle, { desc = "Toggle format on Save" })
map("n", "<leader>us", function()
  Util.toggle("spell")
end, { desc = "Toggle Spelling" })
map("n", "<leader>uw", function()
  Util.toggle("wrap")
end, { desc = "Toggle Word Wrap" })
map("n", "<leader>ul", function()
  Util.toggle("relativenumber", true)
  Util.toggle("number")
end, { desc = "Toggle Line Numbers" })
map("n", "<leader>ud", Util.toggle_diagnostics, { desc = "Toggle Diagnostics" })
local conceallevel = vim.o.conceallevel > 0 and vim.o.conceallevel or 3
map("n", "<leader>uc", function()
  Util.toggle("conceallevel", false, { 0, conceallevel })
end, { desc = "Toggle Conceal" })
map("n", "<leader>uL", "<cmd>:Lazy<cr>", { desc = "Lazy" })

-- Stay in indent mode
map("v", "<", "<gv", { remap = true, desc = "unindent line" })
map("v", ">", ">gv", { remap = true, desc = "indent line" })
