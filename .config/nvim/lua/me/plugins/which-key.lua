return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,

  opts = {
    preset = "helix",

    win = {
      no_overlap = true,
      height = { min = 4, max = 45 },
      padding = { 1, 2 },
      title = true,
      title_pos = "center",
      zindex = 1000,
      wo = {
        winblend = 10, -- optional: makes popup slightly transparent
      },
    },

    layout = {
      width = { min = 30 },
      spacing = 5, -- ✅ spacing between columns
    },
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
