return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>fp",
        function()
          require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
        end,
        desc = " Find Plugin File",
      },
      {
        "<leader>fb",
        function()
          require("telescope.builtin").buffers()
        end,
        desc = "﬘ Find buffers",
      },
      {
        "<leader>fc",
        function()
          require("telescope.builtin").grep_string()
        end,
        desc = " Find text under cursor",
      },
      {
        "<leader>fe",
        ":Telescope file_browser<CR>",
        desc = " Explorer (root dir)",
      },

      {
        "<leader>ff",
        function()
          require("telescope.builtin").find_files({ cwd = "." })
        end,
        desc = " Find files",
      },
      {
        "<leader>fF",
        function()
          require("telescope.builtin").find_files({ hidden = true, no_ignore = true })
        end,
        desc = " Find all files",
      },
      {
        "<leader>fh",
        function()
          require("telescope.builtin").help_tags()
        end,
        desc = "ﬤ Help",
      },
      {
        "<leader>fk",
        function()
          require("telescope.builtin").keymaps()
        end,
        desc = "  Keymaps",
      },
      {
        "<leader>fm",
        function()
          require("telescope.builtin").marks()
        end,
        desc = " Marks",
      },
      {
        "<leader>fn",
        "<CMD>enew<CR>",
        desc = " New File",
      },
      {
        "<leader>fr",
        function()
          require("telescope.builtin").oldfiles()
        end,
        desc = " Recent",
      },
      {
        "<leader>fg",
        function()
          require("telescope.builtin").live_grep()
        end,
        desc = " Grep",
      },
      {
        "<leader>ft",
        ":TodoTelescope<CR>",
        desc = " Todo",
      },
      {
        "<leader>fG",
        function()
          require("telescope.builtin").live_grep({
            additional_args = function(args)
              return vim.list_extend(args, { "--hidden", "--no-ignore" })
            end,
          })
        end,
        desc = " Grep all files (hidden)",
      },
      -- git keymaps
      {
        "<leader>Gc",
        ":Telescope git_commits<CR>",
        desc = "ﰖ Commits",
      },
      {
        "<leader>Gb",
        ":Telescope git_branches<CR>",
        desc = " Branches",
      },
      {
        "<leader>Gs",
        ":Telescope git_status<CR>",
        desc = "ﮮ Status",
      },
    },
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
        mappings = {
          i = {
            ["<C-n"] = function(...)
              return require("telescope.actions").cycle_history_next(...)
            end,
            ["<C-p>"] = function(...)
              return require("telescope.actions").cycle_history_prev(...)
            end,
            ["<C-j>"] = function(...)
              return require("telescope.actions").move_selection_next(...)
            end,
            ["<C-k>"] = function(...)
              return require("telescope.actions").move_selection_previous(...)
            end,
          },
          n = {
            ["q"] = function(...)
              return require("telescope.actions").close(...)
            end,
          },
        },
      },
    },
  },

  -- add telescope-fzf-native
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
        require("telescope").load_extension("yank_history")
        require("telescope").load_extension("todo-comments")
        require("telescope").load_extension("file_browser")
      end,
    },
  },

  {
    "nvim-telescope/telescope-file-browser.nvim",
  },
}
