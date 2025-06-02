return {
  'iamcco/markdown-preview.nvim',
  build = 'cd app && npm install && git restore .',
  ft = { 'markdown' },
  keys = {
    {
      '<leader>m',
      '<cmd>MarkdownPreview<CR>',
      ft = 'markdown',
      desc = 'Markdown Preview'
    },
    {
      '<leader>s',
      '<cmd>MarkdownPreviewStop<CR>',
      ft = 'markdown',
      desc = 'Stop Markdown Preview'
    },
  },
  config = function()
    vim.g.mkdp_auto_close = 0 -- 预览页面不自动关闭（可选）
  end,
}


