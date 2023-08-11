return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    transparent = true,
    opts = {
      style = "night",
      on_colors = function(c)
        c.yellow = "#FFEC6E"
        c.green1 = "#00b0fc"
        c.green2 = "#019ef3"
        c.teal = "#65bcff"
        c.blue2 = "#7aa2f7"
        c.git.add = "#7ea454"
        c.gitSigns.add = "#7ea454"
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
          fg = c.orange,
        }
        hl.TelescopeResultsTitle = {
          bg = c.bg_dark,
          fg = c.orange,
        }
        hl.NoicePopupBorder = {
          fg = c.orange,
        }
        hl.NoicePopupmenuBorder = {
          fg = c.orange,
        }
        hl.NoiceCmdlinePopupBorder = {
          fg = c.orange,
        }
        hl.NoiceCmdlineIcon = {
          fg = c.blue,
        }
      end,
    },
  },
}
