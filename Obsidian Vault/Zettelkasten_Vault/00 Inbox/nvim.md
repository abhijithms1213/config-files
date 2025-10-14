## Inbox: _topic_

**Date:** *2025-10-09*
**Source:** {{Book / Podcast / Video / Article}}
**Describe**:  __
links :
**https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md**
-  is complete lsp setup instruction
### Highlights / Thoughts
- tree command to see the tree view of  the *DIr*
---
## nvim start
- use *nvim* default tree for navigation
- use *%* for create new file eg: on *core* options.lua
- in options write **vim.cmd("let g:netrw_liststyle = 3")** for better structured in default *explorer* :Explorer is to open it 
- and add *require("me.core.plugins")*
```js
require("me.core.options") //in init.lua 
//so create file in  
├── init.lua
└── lua
    └── me
        ├── core
        │   └── options.lua
        ├── lazy.lua
        └── plugins


```
---
```js
vim.cmd("let g:netrw_liststyle = 3")
local opt = vim.opt # vim.opt reffer to the *options* in vim
opt.relativenumber = true // it's an option to on relativenumbers
opt.number = true //another
```
 **:help vim.opt** for show all options help *page* or [https://neovim.io/doc/user/quickref.html#option-list] reffered
- *more*
---
- *:source %* will use for source the current editing file(otherwise u need to *:wq*)
- *:e lua/me/core/init.lua* to create a new file 
---
- in *main* init.lua file changed the initial require with **"me.core"** only
	- because the *core* folder's every file now **recognised** no need to write manually
---
```lua
keymap.lua
------
vim.g.mapleader = " " 
--- u can see 'g' because it's a global variable not 
--you can type `:h g:` and tab through the list but generally speaking besides mapleader/localmapleader/clipboard, vim global variables are just any vimscript variables that have a global scope, and are mainly used for configuring plugins written in vimscript. like govt policies all plugins and all must follow or/ access this variable(or they use u can see leader in leader space)

local keymap = vim.keymap -- for reuse
keymap.set("i","jl","<ESC>",{ desc = "Exit insert mode with jl" }) -- it worked

```
---
```lua
eg code of keymaps
---
vim.g.mapleader = " "

local keymap = vim.keymap.set -- for reuse

-- vim.keymap.set({mode}, {keys}, {command or function}, {options})

etc.....
-- Paste from system clipboard
keymap("n", "<leader>p", '"+p', { desc = "Paste from system clipboard" })

-- Delete text without copying to register
keymap({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete without yanking" })

-- Select all text
keymap("n", "<C-a>", "gg<S-v>G", { desc = "Select all text in file" })
```
- created *lazy.lua* file at /me/lazy.lua 
	-  here added lazy's stater code and required all files from plugins , `
```lua
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("me.plugins") -- to get all the files from that dir 

```
---
- *lua plugins add*
```lua
return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      view = {
        width = 30,
        side = "left",
      },
      renderer = {
        highlight_git = true,
        icons = {
          show = {
            git = true,
            folder = true,
            file = true,
            folder_arrow = true,
          },
        },
      },
      filters = {
        dotfiles = false,
      },
      git = {
        enable = true,
      },
    })
    local keymap = vim.keymap.set
    local opts = { noremap = true, silent = true, desc = "" }
	
    keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer", silent = true })
	
    keymap("n", "<leader>o", ":NvimTreeFocus<CR>", { desc = "Focus NvimTree", silent = true })
	
    -- 🌲 Collapse all folders
    keymap("n", "<leader>oc", ":NvimTreeCollapse<CR>", { desc = "Collapse all folders", silent = true })

    -- 📁 Reveal current file in tree
    keymap("n", "<leader>of", ":NvimTreeFindFileToggle<CR>", { desc = "Find current file in NvimTree", silent = true })
  end
}
```
u can see `:` in all **command to perform(in keymap section)** it says that it is in *command* mode
- all the configuration of the plugins are done in the 
```lua
config = function()
-----
-----
end
```
we get these from their config in their github
- 
---
- in *which key plugin*
```lua
return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
```
here
**This**`init` function is not from the plugin itself** —  
it’s a **special hook provided by Lazy.nvim**.**

init → “Prepare the table before the guest arrives.”

config → “Decorate the table after the guest arrives.”

opts → “Give the chef the recipe directly.”

✅ Summary

| Field                               | Belongs to                | Purpose                                         |
| ----------------------------------- | ------------------------- | ----------------------------------------------- |
| `init`                              | **Lazy.nvim**             | Run code _before_ plugin loads                  |
| `config`                            | **Lazy.nvim**             | Run code _after_ plugin loads                   |
| `opts`                              | **Lazy.nvim**             | Pass options to plugin’s `.setup()`             |
| `vim.o.timeout`, `vim.o.timeoutlen` | **Neovim global options** | Control how long Neovim waits for key sequences |
|                                     |                           |                                                 |

---
##### *lazy vim's features* 
```lua
return {
  "folke/which-key.nvim",
  event = "VeryLazy",

  init = function()
    -- Runs BEFORE plugin is loaded
  end,

  opts = {
    -- Passed directly to plugin's setup() if it has one
  },

  config = function(_, opts)
    -- Runs AFTER plugin is loaded
    -- You can manually call setup or do extra stuff here
  end,
}
so these fields are provided by lazy vim
```

