return {
  "christoomey/vim-tmux-navigator",
  lazy = false,
  keys = {
    { "<M-h>", "<cmd><C-U>TmuxNavigateLeft<CR>", desc = "Tmux Navigate Left" },
    { "<M-j>", "<cmd><C-U>TmuxNavigateDown<CR>", desc = "Tmux Navigate Down" },
    { "<M-k>", "<cmd><C-U>TmuxNavigateUp<CR>", desc = "Tmux Navigate Up" },
    { "<M-l>", "<cmd><C-U>TmuxNavigateRight<CR>", desc = "Tmux Navigate Right" },
    { "<M-\\>", "<cmd><C-U>TmuxNavigatePrevious<CR>", desc = "Tmux Navigate Previous" },
  },
}
