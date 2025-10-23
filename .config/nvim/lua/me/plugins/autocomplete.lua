return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-buffer",     -- source for text in buffer
    "hrsh7th/cmp-path",       -- source for file system paths
    "L3MON4D3/LuaSnip",       -- snippet engine
    "saadparwaiz1/cmp_luasnip", -- luasnip completion source
    "rafamadriz/friendly-snippets", -- pre-made useful snippets
    "onsails/lspkind.nvim",   -- VS Code-like pictograms
  },

  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")
    local lspkind = require("lspkind")

    -- Load VSCode-style snippets from installed plugins (e.g., friendly-snippets)
    require("luasnip.loaders.from_vscode").lazy_load()

    cmp.setup({
      completion = {
        completeopt = "menu,menuone,preview,noselect",
      },

      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },

      mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
        ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),     -- trigger completion
        ["<C-e>"] = cmp.mapping.abort(),            -- close completion
        ["<CR>"] = cmp.mapping.confirm({ select = false }), -- confirm selection
      }),

      sources = cmp.config.sources({

        { name = "nvim_lsp" }, -- source for autocompletion
        { name = "luasnip" }, -- snippets
        { name = "nvim_lsp" }, -- LSP completion
        { name = "buffer" },   -- text within buffer
        { name = "path" },     -- file system paths
      }),

      formatting = {
        format = lspkind.cmp_format({
          maxwidth = 50,
          ellipsis_char = "...",
        }),
      },
    })
  end,
}
