-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half-page down and center", silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half-page up and center", silent = true })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result centered" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Prev search result centered" })
vim.keymap.set("n", "<leader>td", function()
  vim.cmd("lcd %:p:h") -- Change to current file's directory
  vim.cmd("vsplit") -- Create vertical split
  vim.cmd("wincmd l") -- Move to right window
  vim.cmd("terminal") -- Open terminal
end, { desc = "Open terminal in current file's dir" })

vim.keymap.set("t", "<C-h>", "<C-\\><C-n><C-w>h", { desc = "Go to left window" })
