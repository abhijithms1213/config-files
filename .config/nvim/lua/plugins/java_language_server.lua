-- ~/.config/nvim/lua/plugins/java_language_server.lua

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        java_language_server = {}, -- Must be listed to activate
      },
    },
  },
}
