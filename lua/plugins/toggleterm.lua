return {
  "akinsho/toggleterm.nvim",
  version = "*",
  event = "VeryLazy",
  config = function()
    require("toggleterm").setup({
      direction = "float", -- 使用浮动终端
      open_mapping = [[<c-\>]], -- 快捷键 Ctrl + \
      start_in_insert = true, -- 自动进入 insert 模式
      close_on_exit = true, -- 命令退出时关闭终端
      float_opts = {
        border = "curved", -- 浮动边框，可选：single/double/shadow
      },
    })
  end,
}
