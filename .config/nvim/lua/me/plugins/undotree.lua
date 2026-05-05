return {
  {
    "mbbill/undotree",
    keys = {
      { "<leader>u", "<cmd>UndotreeToggle<CR>", desc = "Toggle UndoTree" },
    },
    config = function()
      -- No Lua setup function — this plugin is Vimscript-based.
      -- All configuration is done via global variables:

      vim.g.undotree_WindowLayout = 3     -- left tree + right diff
      vim.g.undotree_SplitWidth = 35      -- width of undo tree window
      vim.g.undotree_DiffpanelHeight = 15 -- height of diff panel
      vim.g.undotree_SetFocusWhenToggle = 1 -- focus on tree when opening
      vim.g.undotree_TreeNodeShape = '●'  -- node symbol
      vim.g.undotree_TreeVertShape = '│'
      vim.g.undotree_TreeSplitShape = '╱'
      vim.g.undotree_TreeReturnShape = '╲'
    end,
  },
  {
    "tzachar/highlight-undo.nvim",
    config = function()
      require("highlight-undo").setup({
        hlgroup = "HighlightUndo",
        duration = 300,
        pattern = { "*" },
        ignored_filetypes = {
          "neo-tree",
          "fugitive",
          "TelescopePrompt",
          "mason",
          "lazy",
        },
      })
    end,
  },
}
