return {
  "nvimdev/dashboard-nvim",
  lazy = false, -- dashboard-nvim shouldn't be lazy-loaded
  opts = function()
    local logo = [[
██╗  ██╗███████╗██╗     ██╗      ██████╗     ██████╗ ███████╗████████╗███████╗██████╗ 
██║  ██║██╔════╝██║     ██║     ██╔═══██╗    ██╔══██╗██╔════╝╚══██╔══╝██╔════╝██╔══██╗
███████║█████╗  ██║     ██║     ██║   ██║    ██████╔╝█████╗     ██║   █████╗  ██████╔╝
██╔══██║██╔══╝  ██║     ██║     ██║   ██║    ██╔═══╝ ██╔══╝     ██║   ██╔══╝  ██╔══██╗
██║  ██║███████╗███████╗███████╗╚██████╔╝    ██║     ███████╗   ██║   ███████╗██║  ██║
╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝ ╚═════╝     ╚═╝     ╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝

]]

    -- Add blank lines before and after logo for spacing
    logo = string.rep("\n", 8) .. logo .. "\n\n"

    -- Set the DashboardHeader highlight group color (pinkish)
    vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#94d1dd", bold = true, italic = true })

    local opts = {
      theme = "doom",
      hide = {
        statusline = false,
      },
      config = {
        header = vim.split(logo, "\n"), -- list of strings, no tables here!
        center = {
          {
            action = "lua LazyVim.pick()()",
            desc = " Find File",
            icon = " ",
            key = "f",
          },
          {
            action = "ene | startinsert",
            desc = " New File",
            icon = " ",
            key = "n",
          },
          {
            action = 'lua LazyVim.pick("oldfiles")()',
            desc = " Recent Files",
            icon = " ",
            key = "r",
          },
          {
            action = 'lua LazyVim.pick("live_grep")()',
            desc = " Find Text",
            icon = " ",
            key = "g",
          },
          {
            action = "lua LazyVim.pick.config_files()()",
            desc = " Config",
            icon = " ",
            key = "c",
          },
          {
            action = 'lua require("persistence").load()',
            desc = " Restore Session",
            icon = " ",
            key = "s",
          },
          {
            action = "LazyExtras",
            desc = " Lazy Extras",
            icon = " ",
            key = "x",
          },
          {
            action = "Lazy",
            desc = " Lazy",
            icon = "󰒲 ",
            key = "l",
          },
          {
            action = function()
              vim.api.nvim_input("<cmd>qa<cr>")
            end,
            desc = " Quit",
            icon = " ",
            key = "q",
          },
        },
        footer = function()
          local stats = require("lazy").stats()
          local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
          return { "⚡ Hey G.H.O.S.T. " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
        end,
      },
    }

    -- pad button descriptions
    for _, button in ipairs(opts.config.center) do
      button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
      button.key_format = "  %s"
    end

    -- Open dashboard after closing lazy window
    if vim.o.filetype == "lazy" then
      vim.api.nvim_create_autocmd("WinClosed", {
        pattern = tostring(vim.api.nvim_get_current_win()),
        once = true,
        callback = function()
          vim.schedule(function()
            vim.api.nvim_exec_autocmds("UIEnter", { group = "dashboard" })
          end)
        end,
      })
    end

    return opts
  end,
}
