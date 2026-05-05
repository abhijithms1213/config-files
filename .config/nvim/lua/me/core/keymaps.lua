vim.g.mapleader = " "

local keymap = vim.keymap.set -- for reuse

-- vim.keymap.set({mode}, {keys}, {command or function}, {options})

keymap("i","jl","<ESC>",{ desc = "Exit insert mode with jl" }) -- it worked
keymap("n","<leader>nh",":nohl<CR>",{desc = "Clear search highlight"})

keymap("n","<leader>+","<C-a>",{desc = "increament number's value"})
keymap("n","<leader>-","<C-x>",{desc = "decrease number's value"})


-- Reload current file
keymap("n", "<leader>r", ":source %<CR>", { desc = "Reload current file" })


-- =========================================
-- 🪟 Window Management
-- =========================================

-- Split window vertically and horizontally
keymap("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })

-- Make split windows equal width & height
keymap("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })

-- Close current split window
keymap("n", "<leader>sx", ":close<CR>", { desc = "Close current split" })

-- Navigate between splits
keymap("n", "<C-h>", "<C-w>h", { desc = "Move focus to left split" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Move focus to right split" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Move focus to bottom split" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Move focus to top split" })


-- =========================================
-- 🗂️ Tabs Management
-- =========================================

-- Open new tab
keymap("n", "<leader>to", ":tabnew<CR>", { desc = "Open new tab" })

-- Close current tab
keymap("n", "<leader>tx", ":tabclose<CR>", { desc = "Close current tab" })

-- Go to next/previous tab
keymap("n", "<leader>tn", ":tabn<CR>", { desc = "Go to next tab" })
keymap("n", "<leader>tp", ":tabp<CR>", { desc = "Go to previous tab" })

-- Open current buffer in new tab
keymap("n", "<leader>tf", ":tabnew %<CR>", { desc = "Open current buffer in new tab" })

------------------------------------------

-- Paste from system clipboard
keymap("n", "<leader>p", '"+p', { desc = "Paste from system clipboard" })

-- Delete text without copying to register
keymap({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete without yanking" })

-- Select all text
keymap("n", "<C-a>", "gg<S-v>G", { desc = "Select all text in file" })

-- Save & Quit shortcuts
keymap("n", "<leader>w", ":w<CR>", { desc = "Save file" })
keymap("n", "<leader>q", ":q<CR>", { desc = "Quit Neovim" })
keymap("n", "<leader>qq", ":q!<CR>", { desc = "Force quit" })
-- keymap("n", "<leader>qq", "<cmd>qall<CR>", { desc = "Quit all" })

-- write and quite for capital W 
vim.api.nvim_create_user_command("W", "w", {})
vim.api.nvim_create_user_command("W i", "w", {})
vim.api.nvim_create_user_command("Wi", "w", {})
vim.api.nvim_create_user_command("Wq", "wq", {})
vim.api.nvim_create_user_command("WQ", "wq", {})
vim.api.nvim_create_user_command("Wa", "wa", {})
vim.api.nvim_create_user_command("WA", "wa", {})

-- Save file
vim.keymap.set('n', '<C-s>', ':w<CR>')     -- Normal mode
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>a') -- Insert mode (save without leaving insert)
vim.keymap.set('v', '<C-s>', '<Esc>:w<CR>gv') -- Visual mode (save and keep selection)
--========================
-- Little one from Primeagen to mass replace string in a file
vim.keymap.set("n", "<leader>sm", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { silent = false ,desc = "Search & replace Word(Primeagen)"})

-- TERMINAL OPEN
--========================

-- Exit terminal with Esc
vim.keymap.set("t", "<Esc>", "<C-\\><C-N>")
-- Open terminal in a horizontal split at the bottom
vim.keymap.set("n", "<leader>st", function()
  vim.cmd.vnew()                -- open a vertical split
  vim.cmd.term()                -- start terminal
  vim.cmd.wincmd("J")           -- move it to the bottom
  vim.api.nvim_win_set_height(0, 10)  -- set height to 10 lines
end, { desc = "Terminal: Open bottom split" })

-- NORMAL mode: move cursor between windows
vim.keymap.set("n", "<C-Up>", "<C-w>k", { desc = "Move to upper window" })
vim.keymap.set("n", "<C-Down>", "<C-w>j", { desc = "Move to lower window" })

-- TERMINAL mode: must first go to Normal mode, then move window
vim.keymap.set("t", "<C-Up>", [[<C-\><C-N><C-w>k]], { desc = "Terminal → Upper window" })
vim.keymap.set("t", "<C-Down>", [[<C-\><C-N><C-w>j]], { desc = "Terminal → Lower window" })

-- TERMINAL CLOSE
--========================
--========================
-- prime configs
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so") -- save config and reload config
end)
vim.keymap.set("n", "<leader>xz", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "=ap", "ma=ap'a")
vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>")

--- ================

-- vim.keymap.set('n', '<leader>u', vim.cmd)
