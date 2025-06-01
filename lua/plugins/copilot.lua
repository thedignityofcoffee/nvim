return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = "<Tab>",      -- 我们重写，不用原生处理
          accept_word = false,
          accept_line = false,
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<C-]>",
        },
      },
      panel = { enabled = false },
      filetypes = {
        yaml = true,
        markdown = true,
        gitcommit = true,
        gitrebase = true,
        help = true,
        text = true,
      },
    })

    -- Tab 映射逻辑（重点）
    vim.keymap.set("i", "<Tab>", function()
      local suggestion = require("copilot.suggestion")
      if suggestion.is_visible() then
        return suggestion.accept()
      else
        return vim.api.nvim_replace_termcodes("<Tab>", true, false, true)
      end
    end, { expr = true, noremap = true, silent = true })
  end,
}

