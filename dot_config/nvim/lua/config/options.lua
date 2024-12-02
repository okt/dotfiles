-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.list = false

-- Create an augroup to manage your autocommands
local man_group = vim.api.nvim_create_augroup("ManConfig", { clear = true })

-- Define an autocommand that triggers on the 'FileType' event for 'man' buffers
vim.api.nvim_create_autocmd("FileType", {
  group = man_group,
  pattern = "man",
  callback = function()
    -- Set your desired options here
    vim.wo.number = false -- Disable line numbers
    vim.wo.relativenumber = false -- Disable relative line numbers
    vim.wo.cursorline = false -- Disable cursor line
    vim.wo.colorcolumn = "" -- Remove color column
    vim.bo.readonly = true -- Set buffer to read-only
    vim.bo.modifiable = false -- Prevent modifications
    vim.g.man_hardwrap = true
    -- Add any other settings you prefer
  end,
})
