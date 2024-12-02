return {
  {
    "folke/snacks.nvim",
    opts = function()
      local version = tostring(vim.version())
      local version_number = version:match("^[^+]+")
      local logo = "  Neovim " .. version_number

      logo = string.rep("\n", 8) .. logo .. "\n\n"

      local opts = {
        dashboard = {
          preset = {
            header = "  ",
            -- stylua: ignore
            ---@type snacks.dashboard.Item[]
            keys = {
              { key = "f", desc = "Files  ................................................", action = ":lua Snacks.dashboard.pick('files')" },
              { key = "n", desc = "New  ..................................................", action = ":ene | startinsert" },
              { key = "g", desc = "Find  .................................................", action = ":lua Snacks.dashboard.pick('live_grep')" },
              { key = "r", desc = "Recent  ...............................................", action = ":lua Snacks.dashboard.pick('oldfiles')" },
              -- { key = "c", desc = "Config  ...............................................", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
              { key = "s", desc = "Sessions  .............................................", action = function() require('persistence').select() end,},
              -- { key = "x", desc = "Extras  ...............................................", action = ":LazyExtras" },
              -- { key = "l", desc = "Lazy  .................................................", action = ":Lazy" },
              { key = "q", desc = "Quit  .................................................", action = ":qa" },
            },
          },
          sections = {
            -- { section = "header", padding = 0 },
            {
              title = "Neovim " .. tostring(vim.version()):match("^[^+]+"),
              section = "keys",
              indent = 2,
              padding = 1,
            },
            { title = "Recent", section = "recent_files", indent = 2, padding = 1, limit = 3 },
            {
              title = "Sessions",
              section = "projects",
              indent = 2,
              padding = 1,
              limit = 3,
            },
            { section = "startup" },
          },
        },
      }

      return opts
    end,
  },
}
