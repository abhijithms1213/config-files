-- vim.lsp.enable("lua_ls");
-- vim.lsp.enable("ts_ls");
-- vim.lsp.enable("clangd");
-- vim.lsp.enable("svelte");
-- commented because mason-lspconfig added in mason so it will handle the enabling automatically

-- lsp.lua
local keymap = vim.keymap -- for conciseness
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    local opts = { buffer = ev.buf, silent = true }

    -- LSP Keymaps

    -- Show LSP references
    opts.desc = "Show LSP references"
    keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)

    -- Go to declaration
    opts.desc = "Go to declaration"
    keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

    -- Show LSP definition
    opts.desc = "Show LSP definition"
    keymap.set("n", "gd", vim.lsp.buf.definition, opts)

    -- Show LSP implementations
    opts.desc = "Show LSP implementations"
    keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)

    -- Show LSP type definitions
    opts.desc = "Show LSP type definitions"
    keymap.set("n", "gt", vim.lsp.buf.type_definition, opts)

    -- Smart Rename
    opts.desc = "Smart Rename"
    keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

    -- See available code actions
    opts.desc = "See available code actions"
    keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

    -- Show line diagnostics
    opts.desc = "Show line diagnostics"
    keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)

    -- Go to previous diagnostic
    opts.desc = "Go to previous diagnostic"
    keymap.set("n", "[d", function()
      vim.diagnostic.jump({ count = -1, float = true })
    end, opts)

    -- Go to next diagnostic
    opts.desc = "Go to next diagnostic"
    keymap.set("n", "]d", function()
      vim.diagnostic.jump({ count = 1, float = true })
    end, opts)

    -- Show documentation for what is under cursor
    opts.desc = "Show documentation for what is under cursor"
    keymap.set("n", "K", vim.lsp.buf.hover, opts)

    -- Restart LSP
    opts.desc = "Restart LSP"
    keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)

    -- signs

    vim.diagnostic.config({
      underline = true, -- underline errors in code
      update_in_insert = true, -- don’t show errors while typing, only after leaving insert mode (optional)
      virtual_text = {
        prefix = "●", -- icon before inline message
        spacing = 2,
        source = "if_many", -- show source name if multiple sources
      },
      signs = {
        active = true,
        text = {
          [vim.diagnostic.severity.ERROR] = "",
          [vim.diagnostic.severity.WARN]  = "",
          [vim.diagnostic.severity.HINT]  = "",
          [vim.diagnostic.severity.INFO]  = "",
        },
      },
      float = {
        border = "single",
        source = "always",
        focusable = false,
        format = function(diagnostic)
          return string.format(
            "%s (%s) [%s]",
            diagnostic.message,
            diagnostic.source,
            diagnostic.code or diagnostic.user_data.lsp.code
          )
        end,
      },
    })
    -- vim.diagnostic.config({
    --
    --   underline = false,
    --   signs = { 
    --     active = true,
    --     text = {
    --       [vim.diagnostic.severity.ERROR] = "",
    --       [vim.diagnostic.severity.WARN]  = "",
    --       [vim.diagnostic.severity.HINT]  = "",
    --       [vim.diagnostic.severity.INFO]  = "",
    --     },
    --   },
    --   virtual_text = false,
    --   float = {
    --     border = "single",
    --     format = function(diagnostic)
    --       return string.format(
    --         "%s (%s) [%s]",
    --         diagnostic.message,
    --         diagnostic.source,
    --         diagnostic.code or diagnostic.user_data.lsp.code
    --       )
    --     end,
    --   },
    -- })
  end,
})
