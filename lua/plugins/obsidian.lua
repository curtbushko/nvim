return {
  {
    "epwalsh/obsidian.nvim",
    config = function()
      require("obsidian").setup({
        dir = "~/Sync/KB",
        id = {},
        daily_notes = {
          folder = "daily",
        },
        disable_frontmatter = true,
        note_id_func = function()
          return tostring(os.date("%Y%m%d-%H%M"))
        end,
      })
    end,
    -- :ObsidianBacklinks for getting a location list of references to the current buffer.
    -- :ObsidianToday to create a new daily note.
    -- :ObsidianYesterday to open (eventually creating) the daily note for the previous working day.
    -- :ObsidianOpen to open a note in the Obsidian app. This command has one optional argument: the ID, path, or alias of the note to open. If not given, the note corresponding to the current buffer is opened.
    -- :ObsidianNew to create a new note. This command has one optional argument: the title of the new note.
    -- :ObsidianSearch to search for notes in your vault using ripgrep with fzf.vim, fzf-lua or telescope.nvim. This command has one optional argument: a search query to start with.
    -- :ObsidianQuickSwitch to quickly switch to another notes in your vault, searching by its name using fzf.vim, fzf-lua or telescope.nvim.
    -- :ObsidianLink to link an in-line visual selection of text to a note. This command has one optional argument: the ID, path, or alias of the note to link to. If not given, the selected text will be used to find the note with a matching ID, path, or alias.
    -- :ObsidianLinkNew to create a new note and link it to an in-line visual selection of text. This command has one optional argument: the title of the new note. If not given, the selected text will be used as the title.
    -- :ObsidianFollowLink to follow a note reference under the cursor.
    --
    keys = {
      { "<leader>Ob", "<CMD>ObsidianBacklinks<CR>", desc = " Backlinks" },
      { "<leader>Od", "<CMD>ObsidianToday<CR>", desc = " New Daily Note" },
      { "<leader>Of", "gf", desc = " Follow Link" },
      { "<leader>Ol", "<CMD>ObsidianLink<CR>", desc = " Link" },
      { "<leader>Om", "<CMD>ObsidianLinkNew<CR>", desc = " New Note from Link" },
      { "<leader>On", "<CMD>ObsidianNew<CR>", desc = " New Note" },
      { "<leader>Oy", "<CMD>ObsidianYesterday<CR>", desc = " Yesterdays Daily Note" },
    },
  },
}
