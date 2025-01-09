-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Function to set key mappings
local map = vim.api.nvim_set_keymap

-- Use 'jk' to exit insert mode
map("i", "jk", "<Esc>", { noremap = true, silent = true })

