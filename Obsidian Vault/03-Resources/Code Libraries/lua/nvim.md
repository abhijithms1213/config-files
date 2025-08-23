```lua
file name of this code: mine.lua
return {
--  { "nvim-telescope/telescope.nvim" },
--  { "nvim-lualine/lualine.nvim" },
  { dir = "~/plugins/present.nvim" },  -- your local plugin
}

```
here in `present` we user defined plugin
- here u can see a file with `return` which means when we use this file , means when we call this file in other location then we can get this file with a `variable like`
```lua
local pluginFromMe = require("mine")
```
