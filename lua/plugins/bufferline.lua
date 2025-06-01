return {
	  "akinsho/bufferline.nvim",
	  dependencies = { "nvim-tree/nvim-web-devicons" },
	  opts = {},
	  keys = {
	 { "<leader>bh", ":BufferLineCyclePrev<CR>", silent = true, desc = "Previous Buffer" },
	 { "<leader>bl", ":BufferLineCycleNext<CR>", silent = true, desc = "Next Buffer" },
	 { "<leader>bp", ":BufferLinePickPick<CR>", silent = true, desc = "Pick Buffer" },
	 { "<leader>bc", ":BufferLinePickClose<CR>", silent = true, desc = "Close Buffer" },
},
lazy = false,
}
