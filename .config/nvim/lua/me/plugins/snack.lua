local get_custom_layout = function(height)
  ---@type snacks.picker.layout.Config
  return {
    reverse = true,

    layout = {
      box = "vertical",
      backdrop = false,
      row = -1,
      width = 0,
      height = height or 0.4,
      border = "none",
      {
        box = "horizontal",
        { win = "list", title = "{title}", title_pos = "center", border = "rounded" },
        { win = "preview", title = "{preview}", width = 0.6, border = "rounded" },
      },
      { win = "input", height = 1, border = "none" },
    },
  }
end

return {
  {
    "folke/snacks.nvim",
    lazy = false,
    priority = 1000,
    ---@type snacks.Config
    opts = {
      gh = {},
      notifier = {
        -- top_down = false,
        -- style = "minimal",
      },
      lazygit = {},
terminal = {
  win = {
    position = "bottom",
    height = 0.25,
    width = 1,
    border = "rounded",
    backdrop = false,
  },
},
      picker = {
        win = {
          input = {
            keys = {
              ["p"] = { "focus_preview", mode = { "n", "x" } },
            },
          },
        },
        matcher = {
          frecency = true,
        },
        layout = "custom",
        layouts = {
          custom = get_custom_layout(),
          select = {
            hidden = { "preview" },
            layout = get_custom_layout().layout,
          },
        },
        sources = {
          gh_issue = {
            layouts = {
              custom = get_custom_layout(0.99),
            },
          },
          gh_pr = {
            layouts = {
              custom = get_custom_layout(0.99),
            },
          },
          gh_diff = {
            layouts = {
              custom = get_custom_layout(0.99),
            },
          },
          smart = {},
          grep = {},
        },
      },
    },
    keys = {
{
  "<leader>`",
  function()
    Snacks.terminal.toggle()
  end,
  desc = "Toggle terminal",
},
      {
        "<leader>sf",
        function()
          Snacks.picker.files({ hidden = true })
        end,
        desc = "Search files (including hidden)",
      },
      {
        "<leader>ss",
        function()
          Snacks.picker.smart({ hidden = true })
        end,
        desc = "Smart search (context-aware)",
      },
      {
        "<leader>sg",
        function()
          Snacks.picker.grep({ hidden = true })
        end,
        desc = "Search text (ripgrep)",
      },
      {
        "<leader>sh",
        function()
          Snacks.picker.help()
        end,
        desc = "Search help tags",
      },
      {
        "<leader>sb",
        function()
          Snacks.picker.buffers()
        end,
        desc = "Search open buffers",
      },
      {
        "<leader>sd",
        function()
          Snacks.picker.diagnostics()
        end,
        desc = "Search diagnostics (LSP)",
      },
      {
        "<leader>gi",
        function()
          Snacks.picker.gh_issue()
        end,
        desc = "GitHub: Open issues",
      },
      {
        "<leader>gI",
        function()
          Snacks.picker.gh_issue({ state = "all" })
        end,
        desc = "GitHub: All issues (open/closed)",
      },
      {
        "<leader>gp",
        function()
          Snacks.picker.gh_pr()
        end,
        desc = "GitHub: Pull requests",
      },
      {
        "<leader>lg",
        function()
          Snacks.lazygit()
        end,
        desc = "Open LazyGit terminal UI",
      },
    }
  },
}
