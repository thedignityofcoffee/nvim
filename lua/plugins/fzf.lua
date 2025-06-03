return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "echasnovski/mini.icons" },
  opts = {},
  config = function()
    local fzf = require("fzf-lua")
    fzf.setup({}) -- 可加自定义配置

    -- 常用映射
    vim.keymap.set("n", "<leader>ff", fzf.files, { desc = "Find Files" })
    vim.keymap.set("n", "<leader>fg", fzf.live_grep, { desc = "Live Grep" })
    vim.keymap.set("n", "<leader>fb", fzf.buffers, { desc = "Buffers" })
    vim.keymap.set("n", "<leader>fh", fzf.help_tags, { desc = "Help Tags" })
    vim.keymap.set("n", "<leader>fc", fzf.commands, { desc = "Commands" })
    vim.keymap.set("n", "<leader>fo", fzf.oldfiles, { desc = "Old Files" })
  end,
}

