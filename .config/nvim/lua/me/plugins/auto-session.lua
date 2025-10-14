return {
  "rmagatti/auto-session",
  config = function()
    local keymap = vim.keymap
    require("auto-session").setup({
      auto_restore_last_session = false,
      suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
    })
    keymap.set("n", "<leader>wr", ":SessionRestore<CR>", { desc = "Restore session for cwd" })
    keymap.set("n", "<leader>ws", ":SessionSave<CR>", { desc = "Save session for auto session root dir" })
  end
}
