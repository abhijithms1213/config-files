return{
  'nvim-mini/mini.nvim', version = '*',
  config = function ()
    require('mini.surround').setup({
    })
    require('mini.operators').setup({
    })
    require('mini.ai').setup({
    })
  end
}
--- ===========================
--- 
--0008

--- vaq - visual ar quotes , aq - to cycle through next
--- vab - visual ar quotes, ab - to cycle through next bracket
--- va8 or numbers
--- valq vanq - last(prev) n-next |||ly valb vanb
--- ===========================
---
---  { ( [ 'some', 'thing', "ok" ] ) }
---  { ( [ 'some', 'thing', "ok" ] ) }
---  { ( [ 'some', 'thing', "ok" ] ) }

--- [




--]
---
---

--- function ("hai")
---
--008

