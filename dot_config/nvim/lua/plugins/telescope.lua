return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        file_ignore_patterns = {
          ".git/",
          ".jj/",
          "node_modules/",
          "vendor/",
        },
      },
    },
  },
}
