vim.cmd("let g:netrw_liststyle = 3")
local opt = vim.opt
opt.relativenumber = true
opt.number = true
opt.undofile = true
-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tab adding
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true --copy indent from current line when starting new one

opt.wrap = true

-- search settings
opt.ignorecase = true --ignore case when searching
opt.smartcase = false -- if u include mixed case in ur search, assumes u want case-sensitive, i changed it to false from true

opt.cursorline = true -- if needed cursor line

-- turn on termguicolors for colorsheme to work
-- (have to use iterm2 or any other true colopr terminal)

opt.termguicolors = true  
opt.background = "dark" -- colorschemes that can be l/d will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift / a bar on left side

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows

opt.splitright = true 
opt.splitbelow = true 

---

