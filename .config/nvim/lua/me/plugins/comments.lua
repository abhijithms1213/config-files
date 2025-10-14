-- add comments in text
return {
  'numToStr/Comment.nvim',
  event = {"BufReadPre","BufNewFile"},
  dependencies = {
    'JoosepAlviste/nvim-ts-context-commentstring',
  },
  config  = function()
    local comment = require("Comment")
    comment.setup({
      pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
      -- local ts_context_commentstring = require('ts_context_commentstring.integrations.comment_nvim')
    })
  end
}
