vim.g.mapleader = " "

local keymap = vim.keymap.set -- for reuse

-- vim.keymap.set({mode}, {keys}, {command or function}, {options})

keymap("i","jl","<ESC>",{ desc = "Exit insert mode with jl" }) -- it worked
keymap("n","<leader>nh",":nohl<CR>",{desc = "Clear search highlight"})

keymap("n","<leader>+","<C-a>",{desc = "increament number's value"})
keymap("n","<leader>-","<C-x>",{desc = "decrease number's value"})

-- Save & Quit shortcuts
keymap("n", "<leader>w", ":w<CR>", { desc = "Save file" })
keymap("n", "<leader>q", ":q<CR>", { desc = "Quit Neovim" })
keymap("n", "<leader>qq", ":q!<CR>", { desc = "Force quit" })

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
