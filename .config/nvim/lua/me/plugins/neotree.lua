return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local function my_on_attach(bufnr)
      local api = require("nvim-tree.api")

      -- Default mappings
      api.config.mappings.default_on_attach(bufnr)

      -- ❌ Disable default "s"
      vim.keymap.del("n", "s", { buffer = bufnr })
    end
    require("nvim-tree").setup({
      on_attach = my_on_attach,   -- << IMPORTANT
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
    -- keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer", silent = true })
    keymap("n", "<leader>of", ":NvimTreeFocus<CR>", { desc = "Focus NvimTree", silent = true })
    -- 🌲 Collapse all folders
    keymap("n", "<leader>oc", ":NvimTreeCollapse<CR>", { desc = "Collapse all folders", silent = true })

    -- 📁 Reveal current file in tree
    -- keymap("n", "<leader>of", ":NvimTreeFindFileToggle<CR>", { desc = "Find current file in NvimTree", silent = true })
    keymap("n", "<leader>e", ":NvimTreeFindFileToggle<CR>", { desc = "Find current file in NvimTree", silent = true })
  end
}
