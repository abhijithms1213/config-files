return{
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  -- or                              , branch = '0.1.x',
  dependencies = { 
    'nvim-lua/plenary.nvim' ,
    "folke/todo-comments.nvim",
  },
  config = function()
    local builtin = require('telescope.builtin')
    local telescope = require('telescope')
    local actions = require('telescope.actions')

    telescope.setup({
      defaults = {
        mappings = {
          i = {
            ["<C-h>"] = "which_key",
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
          },
        },
      },
    })

    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
    vim.keymap.set('n', '<leader>fo', builtin.oldfiles, { desc = 'Telescope help tags' })
    vim.keymap.set('n', '<leader>fc', builtin.grep_string, { desc = 'Telescope help tags' })
    vim.keymap.set('n', '<leader>ft', ":TodoTelescope<cr>", { desc = 'Find todos' })
  end,
  vim.keymap.set('n', '<leader>b', function()
  require('telescope.builtin').buffers({
    sort_mru=true,
    ignore_current_buffer=true,
    show_all_buffers=false
  })
end)
}
