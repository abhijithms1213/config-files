return{'akinsho/bufferline.nvim',
version = "*",
dependencies = 'nvim-tree/nvim-web-devicons',
-- require("bufferline").setup{

  -- }
  opts = {
    options ={
      mode = "tabs",
      seperator_style = "thick",
      buffer_close_icon = '󰅖',
      modified_icon = '● ',
      close_icon = ' ',
      left_trunc_marker = ' ',
      right_trunc_marker = ' ',
      indicator = {
        icon = '▎', -- this should be omitted if indicator style is not 'icon'
        style = 'underline' ,
      },
    },},
  }
