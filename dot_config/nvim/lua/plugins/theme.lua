return {
  -- { "rebelot/kanagawa.nvim" },
  -- { "psliwka/termcolors.nvim" },
  -- { "chriskempson/base16-vim" },
  -- { "kdheepak/monochrome.nvim", lazy = false },
  -- {
  --   "lukas-reineke/indent-blankline.nvim",
  --   opts = {
  --     disable_with_nolist = true,
  --   },
  -- },

  -- {
  --   "echasnovski/mini.indentscope",
  --   cond = vim.opt.list:get(),
  -- },
  {
    "catppuccin/nvim",
    enabled = false,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      enabled = false,
    },
  },
  {
    "roobert/palette.nvim",
    enabled = true,
    lazy = false,
    priority = 1000,
    config = function()
      require("palette").setup({
        palettes = {
          main = "custom_main_palette",
          accent = "custom_accent_palette",
          state = "custom_state_palette",
        },
        custom_palettes = {
          main = {
            custom_main_palette = {
              color8 = "#cccccc", --strings, borders, type
              color0 = "#d4d4d4", --label
              color1 = "#323232", --cursorline, visual
              color6 = "#717171", -- Comments, spelling, variables
              color3 = "#898989", --linenumbers, function, scope brackets
              color4 = "#a1a1a1", --symbols, folds, operators
              color5 = "#b9b9b9", --identifiers
              color2 = "#a9a9a9", --numbers, cursor, whitespace
              color7 = "#ededed", --keywords
              black = "#0e0e0e",
            },
          },
          accent = {
            custom_accent_palette = {
              accent0 = "#ecd4d4", --character, label
              accent1 = "#cec7b9", --statusline
              accent2 = "#d1d3be",
              accent3 = "#abebe2", --parenmatch
              accent4 = "#8abae1", --boolean, float, question
              accent5 = "#f7d7ff",
              accent6 = "#ddfcf8",
            },
          },
          state = {
            custom_state_palette = {
              error = "#ec8989",
              warning = "#ffe6b5",
              hint = "#eff6ab",
              ok = "#eff6ab",
              info = "#c9e6fd",
            },
          },
        },
        custom_highlight_group = "group_name",
        custom_highlight_groups = {
          group_name = {
            {
              "String",
              "#abebe2",
            },
            {
              "WinSeparator",
              "#323232",
            },
            {
              "RenderMarkdownCodeBg",
              nil,
              "#000000",
            },
          },
        },
        transparent_background = true,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        require("palette").load()
      end,
      news = {
        -- When enabled, NEWS.md will be shown when changed.
        -- This only contains big new features and breaking changes.
        lazyvim = false,
        -- Same but for Neovim's news.txt
        neovim = true,
      },
      -- icons used by other plugins
      -- stylua: ignore
      icons = {
        dap = {
          Stopped             = { "󰁕 ", "DiagnosticWarn", "DapStoppedLine" },
          Breakpoint          = " ",
          BreakpointCondition = " ",
          BreakpointRejected  = { " ", "DiagnosticError" },
          LogPoint            = ".>",
        },
        diagnostics = {
          Error = "x",
          Warn  = "!",
          Hint  = "~",
          Info  = "i",
        },
        git = {
          added    = " ",
          modified = " ",
          removed  = " ",
        },
      },
    },
  },
}
