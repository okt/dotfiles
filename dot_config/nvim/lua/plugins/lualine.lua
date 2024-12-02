return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  -- dependencies = { "roobert/pallette" },
  opts = {
    options = {
      theme = function()
        local auto_theme_custom = require("lualine.themes.auto")

        local m = require("palette.theme").main
        local a = require("palette.theme").accent
        -- local s = require("palette.theme").state

        auto_theme_custom = {
          replace = {
            a = { fg = m.black, bg = a.accent5, gui = "bold" },
            b = { fg = a.accent5, bg = nil },
          },
          inactive = {
            a = { fg = m.black, bg = m.color3, gui = "bold" },
            b = { fg = m.color3, bg = nil },
            c = { fg = m.color3, bg = nil },
          },
          normal = {
            a = { fg = m.black, bg = m.color2, gui = "bold" },
            b = { fg = m.color0, bg = nil },
            c = { fg = m.color4, bg = nil },
          },
          visual = {
            a = { fg = m.black, bg = a.accent2, gui = "bold" },
            b = { fg = a.accent2, bg = nil },
          },
          insert = {
            a = { fg = m.black, bg = a.accent3, gui = "bold" },
            b = { fg = a.accent3, bg = nil },
          },
          command = {
            a = { fg = m.black, bg = a.accent6, gui = "bold" },
            b = { fg = a.accent6, bg = nil },
          },
        }

        return auto_theme_custom
      end,
      component_separators = { left = "", right = "" },
      section_separators = { left = "▓▒░", right = "░▒▓" },
      -- disabled_filetypes = { statusline = { "man" } },
      -- filetype_names = {
      --   TelescopePrompt = "Telescope",
      --   dashboard = "Dashboard",
      -- },
    },
    sections = {
      lualine_a = { "mode" },
      lualine_z = {},
    },
  },
}
