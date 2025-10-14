return {
  {
    -- Mason base setup
    "mason-org/mason.nvim",
    lazy = false,
    opts = {},
  },
  {
    -- Mason-LSPConfig (bridge between mason and lspconfig)
    "mason-org/mason-lspconfig.nvim",
    dependencies = { "mason-org/mason.nvim", "neovim/nvim-lspconfig" },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup(
        -- automatic_installation = true,
      )
    end,
  },
  {

    -- vim.lsp.config("lua_ls", {
    --   filetypes = { "lua" },
    -- })

  }
  }
