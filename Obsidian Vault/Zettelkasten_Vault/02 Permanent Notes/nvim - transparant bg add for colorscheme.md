 **Date:**  *2025-10-27*
 **Tags:** #permanent #nvim 
 **Linked:** [[]], [[]]
## Explanatio**n**
---
```lua
- [ ] --- transparant bg it
  vim.keymap.set('n', '<leader>tt', function()
      local onedark = require('onedark')
      local current = vim.g.onedark_config or {}
      -- toggle transparent option and reload colorscheme
      onedark.setup { transparent = not current.transparent }
      onedark.load()
    end, { noremap = true, silent = true })
```
## References
- [[]]