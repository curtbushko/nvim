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

--- Maps for jj to act as Esc in insert and command modes
map("i", "jj", "<ESC>", { remap = true, silent = true })
map("c", "jj", "<ESC>", { remap = true, silent = true })
--- Nice to haves
map("n", "<TAB>", "<CMD>BufferLineCycleNext<cr>", { remap = true, desc = " Next Buffer" })
map("n", "<S-TAB>", "<CMD>BufferLineCyclePrev<cr>", { remap = true, desc = " Previous Buffer" })
map("n", "<leader>j", "<C-f>", { remap = true, silent = true, desc = "screen down" })
map("n", "<leader>k", "<C-b>", { remap = true, silent = true, desc = "screen up" })
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

-- LSP
map("n", "gd", "<CMD>Telescope lsp_definitions<CR>")
map("n", "gp", "<CMD>Telescope peek_definition<CR>")
map("n", "gi", "<CMD>Telescope lsp_implementations<CR>")
map("n", "gr", "<CMD>Telescope lsp_references<CR>")
map("n", "gt", "<CMD>Telescope lsp_type_definitions<CR>")
map("n", "gb", "<C-o>", { desc = "Go back" })

-- July 19, 2024 - removing as they might be duplicates of what LazyVim does
--map("n", "<leader>ca", "<CMD>lua vim.lsp.buf.code_action()<CR>", { desc = " Code Action" })
--map("n", "<leader>cd", "<CMD>Telescope lsp_definitions<CR>", { desc = "󰉺 Definitions" })
--map("n", "<leader>cD", "<CMD>Telescope diagnostics<CR>", { desc = " Diagnostics" })
--map("n", "<leader>ch", "<CMD>lua vim.lsp.buf.signature_help()<CR>", { desc = "ﰠ Signature Help" })
--map("n", "<leader>ci", "<CMD>Telescope lsp_implementations<CR>", { desc = " Implementations" })
--map("n", "<leader>cK", "<CMD>lua vim.lsp.buf.hover()<CR>", { desc = " Hover" })
--map("n", "<leader>cp", "<CMD>Lspsaga peek_definition<CR>", { desc = " Peek" })
--map("n", "<leader>cq", "<CMD>lua vim.diagnostic.setloclist()<CR>", { desc = "󰤇 Quickfix" })
--map("n", "<leader>cr", "<CMD>Telescope lsp_references<CR>", { desc = " References" })
--map("n", "<leader>cR", "<CMD>lua vim.lsp.buf.rename()<CR>", { desc = " Rename" })
--map("n", "<leader>cs", "<CMD>Telescope lsp_document_symbols<CR>", { desc = " Document Symbols" })
--map("n", "<leader>cS", "<CMD>Telescope lsp_dynamic_workspace_symbols<CR>", { desc = " Workspace Symbols" })
--map("n", "<leader>ct", "<CMD>Telescope lsp_type_definitions<CR>", { desc = " Type Definitions" })
-- map("n", "<leader>   w = { function() require("telescope.builtin").lsp_workspace_symbols() end, "Workspace symbols" },

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

map("n", "<leader>p", ":Telescope yank_history<CR>", { desc = "󰅌 Paste History" })

-- Stay in indent mode
map("v", "<", "<gv", { remap = true, desc = "unindent line" })
map("v", ">", ">gv", { remap = true, desc = "indent line" })
