return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require('tokyonight').setup({
      style = "storm",
      on_colors = function(colors)
        -- colors.bg = "#a2f7e1"
      end
    })
  vim.cmd[[colorscheme tokyonight]]
  end
}
