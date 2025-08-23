return {
  {
    "azratul/live-share.nvim",
    dependencies = { "jbyuki/instant.nvim" },
    config = function()
      -- Replace with your username
      vim.g.instant_username = "jithu"
      require("live-share").setup({
        -- optional overrides
        port_internal = 8765,
        max_attempts = 40,
        service = "serveo.net",
      })
    end,
  },
}
