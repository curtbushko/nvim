return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "night" },
    on_colors = function(c)
      c.yellow = "#FFEC6E"
    end,
    on_highlights = function(hl, c)
      -- make the current line cursor orange
      hl.CursorLineNr = { fg = c.orange, bold = true }
      hl.ColorColumn = { bg = c.bg }

      -- borderless telescope
      local prompt = "#2d3149"
      hl.TelescopeNormal = {
        bg = c.bg_dark,
        fg = c.fg_dark,
      }
      hl.TelescopeBorder = {
        bg = c.bg_dark,
        fg = c.bg_dark,
      }
      hl.TelescopePromptNormal = {
        bg = prompt,
      }
      hl.TelescopePromptBorder = {
        bg = prompt,
        fg = prompt,
      }
      hl.TelescopePromptTitle = {
        bg = c.fg_gutter,
        fg = c.orange,
      }
      hl.TelescopePreviewTitle = {
        bg = c.bg_dark,
        fg = c.bg_dark,
      }
      hl.TelescopeResultsTitle = {
        bg = c.bg_dark,
        fg = c.bg_dark,
      }
    end,
  },
}
