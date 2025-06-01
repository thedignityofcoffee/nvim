return {
  "theniceboy/nvim-deus",
  lazy = false,         -- 禁用懒加载，确保最先加载
  priority = 1000,      -- 提高加载优先级，避免被覆盖
  config = function()
    -- 尽早加载 colorscheme，防止出错
    vim.schedule(function()
      pcall(vim.cmd, "colorscheme deus")
    end)
  end,
}

