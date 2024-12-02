-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local function toggle_list()
  if vim.opt.list:get() then
    vim.cmd("setlocal nolist")
    vim.cmd("IBLDisable")
    vim.b.miniindentscope_disable = true
  else
    vim.cmd("setlocal list")
    vim.cmd("IBLEnable")
    vim.b.miniindentscope_disable = false
  end
end

vim.keymap.set("n", "<leader>uL", toggle_list, { desc = "Toggle listchars" })
