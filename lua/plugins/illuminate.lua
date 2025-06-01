return {
  'RRethy/vim-illuminate',
  event = { 'BufReadPost', 'BufNewFile' }, -- 只在打开文件时加载
  config = function()
      vim.keymap.set('n', '<M-n>', '<cmd>IlluminateNextReference<CR>', { desc = 'Next Reference' })
      vim.keymap.set('n', '<M-p>', '<cmd>IlluminatePrevReference<CR>', { desc = 'Prev Reference' })

  end,
}
