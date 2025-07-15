return {
  "kdheepak/lazygit.nvim",
  keys = {
    {
      "<leader>gg",
      function()
        -- Change to current file's directory before opening lazygit
        vim.cmd("lcd %:p:h")
        require("lazygit").lazygit()
      end,
      desc = "Lazygit (current file's dir)",
    },
  },
}
