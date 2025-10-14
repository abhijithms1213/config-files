return{
  'windwp/nvim-autopairs',
  event = "InsertEnter",
  -- config = true
  dependencies = {
    "hrsh7th/nvim-cmp"
  },
  config = function()
    local autopair = require("nvim-autopairs")
    local cmp_autopairs = require('nvim-autopairs.completion.cmp')
    local cmp = require('cmp')
    autopair.setup({
      check_ts = true,
      ts_config = {
        lua = {'string'},-- it will not add a pair on that treesitter node
        javascript = {'template_string'},
        java = false,-- don't check treesitter on java
      }
    })
    cmp.event:on(
      'confirm_done',
      cmp_autopairs.on_confirm_done()
    )
  end
}
