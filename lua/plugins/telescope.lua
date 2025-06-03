-- ~/.config/nvim/lua/plugins/telescope.lua
return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  cmd = "Telescope",  -- 使用 :Telescope 命令时才加载
  keys = {
    { "<leader>ff", function() require("telescope.builtin").find_files() end, desc = "Find Files" },
    { "<leader>fg", function() require("telescope.builtin").live_grep() end,  desc = "Live Grep" },
    { "<leader>fb", function() require("telescope.builtin").buffers() end,    desc = "Buffers" },
    { "<leader>fh", function() require("telescope.builtin").help_tags() end,  desc = "Help Tags" },
  },
  config = function()
    require("telescope").setup({
      defaults = {
        file_ignore_patterns = { "node_modules", "%.git/", "build" },
        mappings = {
          i = {
            ["<esc>"] = require("telescope.actions").close,
          },
        },
        preview = {
          mime_hook = function(filepath, bufnr, opts)
            local is_text = vim.fn.system("file --mime-type -b " .. filepath):match("text")
            if not is_text then
              require("telescope.previewers.utils").set_preview_message(bufnr, opts.winid, "BINARY")
            end
          end,
        },
      },
    })
  end,
}

