return{
  on_attach = function(client, bufnr)
    -- Workaround to trigger reloading JS/TS files
    -- See https://github.com/sveltejs/language-tools/issues/2008
    vim.api.nvim_create_autocmd('BufWritePost', {
      pattern = { '*.js', '*.ts' },
      callback = function(ctx)
        -- internal API to sync changes that have not yet been saved to the file system
        client:notify('$/onDidChangeTsOrJsFile', { uri = ctx.match })
      end,
    })end,
}

