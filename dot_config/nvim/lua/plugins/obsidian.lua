return {
  {
    "epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = true,
    -- ft = "markdown",
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    event = {
      "BufReadPre /home/okt/Repos/okt/brainbox/*.md",
      "BufNewFile /home/okt/Repos/okt/brainbox/*.md",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-cmp",
    },
    config = function(_, opts)
      require("obsidian").setup(opts)
    end,
    opts = {
      workspaces = {
        {
          name = "brainbox",
          path = "/home/okt/Repos/okt/brainbox",
        },
      },
      notes_subdir = "pages",
      daily_notes = {
        folder = "journals",
        default_tags = { "journals" },
      },
      open_notes_in = "vsplit",
      completion = {
        nvim_cmp = true,
        min_chars = 2,
      },
      new_notes_location = "notes_subdir",
      ui = {
        enable = false, -- set to false to disable all additional syntax features
        update_debounce = 200, -- update delay after a text change (in milliseconds)
        max_file_length = 5000, -- disable UI features for files with more than this many lines
        -- Define how various check-boxes are displayed
        bullets = { char = "-", hl_group = "ObsidianBullet" },
        external_link_icon = { char = "", hl_group = "ObsidianExtLinkIcon" },
        reference_text = { hl_group = "ObsidianRefText" },
        highlight_text = { hl_group = "ObsidianHighlightText" },
        tags = { hl_group = "ObsidianTag" },
        block_ids = { hl_group = "ObsidianBlockID" },
        hl_groups = {
          ObsidianTodo = { bold = true, fg = "#eff6ab" },
          ObsidianDone = { bold = true, fg = "#abebe2" },
          ObsidianRightArrow = { bold = true, fg = "#ec8989" },
          ObsidianTilde = { bold = true, fg = "#f7dfff" },
          ObsidianImportant = { bold = true, fg = "#eff6ab" },
          ObsidianBullet = { bold = true, fg = "#ddfcf8" },
          ObsidianRefText = { underline = true, fg = "#f7dfff" },
          ObsidianExtLinkIcon = { fg = "#f7dfff" },
          ObsidianTag = { italic = true, fg = "#ddfcf8" },
          ObsidianBlockID = { italic = true, fg = "#abebe2" },
          ObsidianHighlightText = { bg = "#ec8989" },
          RenderMarkdownCode = { bg = "#222222" },
        },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters = {
        markdownlint = {
          args = { "--disable", "MD012", "--" },
        },
      },
    },
  },
}
