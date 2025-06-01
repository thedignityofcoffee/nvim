return {
  {
    'dhruvasagar/vim-table-mode',
    ft = 'markdown',
    lazy = true,
    config = function()
      vim.keymap.set('n', '<leader>tm', ':TableModeToggle<CR>', { desc = 'Toggle Table Mode', silent = true })
    end,
  }
}
