return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
	  vim.g.loaded_netrw = 1
	  vim.g.loaded_netrwPlugin = 1
	  vim.keymap.set("n", "<leader>n", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })
	  require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
end
}
