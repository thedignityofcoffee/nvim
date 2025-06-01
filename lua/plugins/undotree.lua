return {
  "mbbill/undotree",
  cmd = { "UndotreeToggle", "UndotreeFocus" },
  keys = {
    { "<leader>u", "<cmd>UndotreeToggle<cr>", desc = "Toggle Undotree" },
   -- { "<leader>uf", "<cmd>UndotreeFocus<cr>", desc = "Focus Undotree" },
  },
  config = function()
    vim.g.undotree_WindowLayout = 2 -- Set the layout to vertical split
    vim.g.undotree_SplitWidth = 35 -- Set the width of the undotree window
    vim.g.undotree_SetFocusWhenToggle = 1 -- Focus on the undotree window when toggled
    vim.g.undotree_HelpLine = 0 -- Disable help line
    vim.g.undotree_DiffCommand = "diff" -- Use 'diff' command for showing differences
  end,
  }
