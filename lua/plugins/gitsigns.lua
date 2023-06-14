-- TODO: Add nerdfonts to keymaps
return {
  "lewis6991/gitsigns.nvim",

  config = function()
    require("gitsigns").setup({
      numhl = true,
      current_line_blame = true,
    })
  end,

  opts = {
    on_attach = function(buffer)
      local gs = package.loaded.gitsigns

      local function map(mode, l, r, desc)
        vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
      end

        -- stylua: ignore start
        map("n", "<leader>Ghn", gs.next_hunk, " Next Hunk")
        map("n", "<leader>Ghp", gs.prev_hunk, " Prev Hunk")
        map("n", "<leader>GhS", gs.stage_buffer, "  Stage Buffer")
        map("n", "<leader>Ghu", gs.undo_stage_hunk, " Undo Stage Hunk")
        map("n", "<leader>GhR", gs.reset_buffer, "  Reset Buffer")
        map("n", "<leader>GhP", gs.preview_hunk, "  Preview Hunk")
        map("n", "<leader>Ghb", function() gs.blame_line({ full = true }) end, " Blame Line")
        map("n", "<leader>Ghd", gs.diffthis, " Diff This")
        map("n", "<leader>GhD", function() gs.diffthis("~") end, " Diff This ~")
    end,
  },
  keys = {
    { "<leader>ghs", false },
    { "<leader>ghr", false },
    { "<leader>ghS ", false },
    { "<leader>ghu ", false },
    { "<leader>ghR ", false },
    { "<leader>ghp ", false },
    { "<leader>ghb ", false },
    { "<leader>ghd ", false },
    { "<leader>ghD ", false },
  },
}
