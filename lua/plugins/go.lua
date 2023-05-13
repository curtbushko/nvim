return {
  {
    "ray-x/go.nvim",
    dependencies = { -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()
    end,
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
    build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
    keys = {
      --   Build & ﭧ Test
      { "<leader>gBb", ":GoBuild<CR>", desc = " :GoBuild" },
      { "<leader>gBg", ":GoGenerate<CR>", desc = " :GoGenerate" },
      { "<leader>gBl", ":GoLint<CR>", desc = " :GoLint" },
      { "<leader>gBr", ":GoRun<CR>", desc = "ﰌ :GoRun" },
      { "<leader>gBt", ":GoTest<CR>", desc = "ﭧ :GoTest" },
      { "<leader>gBc", ":GoTestCompile<CR>", desc = "  :GoTestCompile" },
      { "<leader>gBf", ":GoTestFunc<CR>", desc = "ﭧ :GoTestFunc" },
      --   Coverage
      { "<leader>gcb", ":GoCoverageBrowser<CR>", desc = " :GoCoverageBrowser" },
      { "<leader>gcc", ":GoCoverage<CR>", desc = "  :GoCoverage" },
      { "<leader>gcC", ":GoCoverageClear<CR>", desc = " :GoCoverageClear" },
      { "<leader>gct", ":GoCoverageToggle<CR>", desc = "  :GoCoverageeToggle" },
      -- ﮊ Debug
      { "<leader>gdb", ":lua require('dap').toggle_breakpoint()<CR>", desc = " Breakpoint Toggle <F1>" },
      { "<leader>gdd", ":GoDebug<CR>", desc = " Debug <F2>" },
      {
        "<leader>gdB",
        ":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
        desc = "Breakpoint Condition",
      },
      { "<leader>gds", ":lua require('dap').step_over()<CR>", desc = " Step over <F3>" },
      { "<leader>gdi", ":lua require('dap').step_into()<CR>", desc = " Step into <F4>" },
      { "<leader>gdo", ":lua require('dap').step_out()<CR>", desc = " Step out <F5>" },
      { "<leader>gdS", ":GoDebug -s<CR>", desc = " Stop <F6>" },
      { "<leader>gda", ":lua require('dap').step_back()<CR>", desc = " Step back" },
      { "<leader>gdc", ":lua require('dap').continue()<CR>", desc = " Continue" },
      { "<leader>gdx", ":lua require('dap').terminate()<CR>", desc = " Close/Terminate" },
      { "<leader>gdp", ":lua require('dap').pause()<CR>", desc = " Pause" },
      {
        "<leader>gdl",
        ":lua require('dap').set_breakpoint(nil, nil, vim.fn.input('Logpoint message: '))<CR>",
        desc = "Logpoint message",
      },
      { "<leader>gdR", ":lua require('dap').repl.open()<CR>", desc = "Repl Open" },
      { "<leader>gdr", ":GoDebug -R<CR>", desc = " Restart <F7>" },
      { "<leader>gdu", ":lua require('dap').up()<CR>", desc = " Up" },
      -- ﱑ Format
      { "<leader>gFa", ":GoFmtAutoSaveToggle<CR>", desc = "  :GoFmtAutoSaveToggle" },
      { "<leader>gFf", ":GoFmt<CR>", desc = "ﱑ :GoFmt" },
      { "<leader>gFi", ":GoImport<CR>", desc = " :GoImport" },
      --  Lint
      { "<leader>gla", ":GoMetaLinter<CR>", desc = " :GoMetaLinter" },
      { "<leader>gle", ":GoErrCheck<CR>", desc = " :GoErrCheck" },
      { "<leader>gll", ":GoLint<CR>", desc = " :GoLint" },
      { "<leader>glv", ":GoVet<CR>", desc = "ﮒ :GoVet" },
      -- ﳊ Source Analysis
      { "<leader>gsc", ":GoCallers<CR>", desc = " :GoCallers" },
      { "<leader>gsi", ":GoImplements<CR>", desc = "  :GoImplements" },
      { "<leader>gsr", ":GoReferrers<CR>", desc = "  :GoReferrers" },
      --  Tags
      { "<leader>gTa", ":GoAddTags<CR>", desc = " :GoAddTags" },
      { "<leader>gTc", ":GoClearTag<CR>", desc = "﫧:GoClearTag" },
      { "<leader>gTj", ":GoAddTag json<CR>", desc = "ﬥ :GoAddTags json" },
      { "<leader>gTo", ":GoAddTag omitempty<CR>", desc = " :GoAddTags omitempty" },
      { "<leader>gTr", ":GoRemoveTags<CR>", desc = "﫧:GoRemoveTags" },
      { "<leader>gTx", ":GoAddTag xml<CR>", desc = "x :GoAddTag xml" },
      { "<leader>gTy", ":GoAddTag yaml<CR>", desc = " :GoAddTag yaml" },
      --
      { "<leader>gb", ":GoBuild<CR>", desc = " :GoBuild" },
      { "<leader>gt", ":GoTest<CR>", desc = "ﭧ :GoTest" },
      { "<leader>gC", ":GoChannelPeers<CR>", desc = "ﳤ :GoChannelPeers" },
      { "<leader>gD", ":GoDoc<CR>", desc = " :GoDoc" },
      { "<leader>ge", ":GoErrCheck<CR>", desc = " :GoErrCheck" },
      { "<leader>gf", ":GoFmt<CR>", desc = "ﱑ :GoFmt" },
      { "<leader>gi", ":GoImport<CR>", desc = " :GoImport" },
      { "<leader>gI", ":GoInstall<CR>", desc = " :GoInstall" },
      { "<leader>gr", ":GoRename<CR>", desc = " :GoRename" },
      { "<leader>go", ":GoPkgOutline<CR>", desc = " :GoPkgOutline" },
    },
  },
}
