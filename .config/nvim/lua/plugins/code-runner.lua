return {
  "CRAG666/code_runner.nvim",
  config = function()
    require("code_runner").setup({
      -- put here the commands by filetype
      filetype = {
        java = 'cd "$dir" && javac "$fileName" && java "$fileNameWithoutExt"',
        c = 'cd "$dir" && gcc "$fileName" -o "$fileNameWithoutExt" && ./"$fileNameWithoutExt"',
        cpp = 'cd "$dir" && g++ "$fileName" -o "$fileNameWithoutExt" && ./"$fileNameWithoutExt"',
        python = 'cd "$dir" && python3 "$fileName"',
        javascript = 'node "$fileName"',
        sh = 'cd "$dir" && bash "$fileName"',
      },
    })
  end,
  keys = {
    { "<leader>r", ":RunCode<CR>", desc = "Run Code" },
  },
}
