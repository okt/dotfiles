return {
  "MeanderingProgrammer/render-markdown.nvim",
  opts = {
    preset = "obsidian", -- Use the 'obsidian' preset for styling
    render_modes = {}, -- Render in normal, visual, and insert modes
    anti_conceal = {
      enabled = true,
      ignore = { code_background = true, sign = true },
      above = 1,
      below = 1,
    },
    heading = {
      enabled = true,
      sign = true,
      position = "overlay",
    },
    code = {
      enabled = true,
      width = "block",
      left_pad = 1,
      right_pad = 1,
      min_width = 40,
      border = true,
      border_prefix = true,
      above = "─",
      below = "─",
      background = "RenderMarkdownCodeBg",
      -- highlight = "RenderMarkdownCode",
      -- sign_highlight = "RenderMarkdownCodeSign",
      -- language_highlight = "RenderMarkdownCodeLang",
    },
    -- list = {
    --   enabled = true,
    --   icons = { "•", "◦", "▪" },
    --   highlights = { "RenderMarkdownList1", "RenderMarkdownList2", "RenderMarkdownList3" },
    --   padding = 1,
    -- },
    -- checkbox = {
    --   enabled = true,
    --   icons = {
    --     checked = "✔️ ",
    --     unchecked = "❌ ",
    --   },
    --   highlights = {
    --     checked = "RenderMarkdownCheckboxChecked",
    --     unchecked = "RenderMarkdownCheckboxUnchecked",
    --   },
    -- },
    -- table = {
    --   enabled = true,
    --   preset = "round",
    --   highlight = "RenderMarkdownTable",
    --   border = true,
    --   padding = 1,
    -- },
    -- callout = {
    --   enabled = true,
    --   icons = {
    --     note = "ℹ️ ",
    --     warning = "⚠️ ",
    --     danger = "❗",
    --   },
    --   highlights = {
    --     note = "RenderMarkdownCalloutNote",
    --     warning = "RenderMarkdownCalloutWarning",
    --     danger = "RenderMarkdownCalloutDanger",
    --   },
    --   padding = 1,
    -- },
    -- link = {
    --   enabled = true,
    --   icon = "🔗 ",
    --   highlight = "RenderMarkdownLink",
    -- },
    -- sign = {
    --   enabled = true,
    --   icon = "ℹ️ ",
    --   highlight = "RenderMarkdownSign",
    -- },
    -- win_options = {
    --   non_render = {
    --     conceallevel = 0,
    --   },
    --   render = {
    --     conceallevel = 2,
    --     concealcursor = "nc",
    --   },
    -- },
  },
}
