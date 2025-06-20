return {
	"nvim-treesitter/nvim-treesitter",
  branch = 'master',
  lazy = false,
  build = ":TSUpdate",
	event = "VeryLazy",
	main = "nvim-treesitter.configs",
	opts = {
		ensure_installed = {
			"bash",
			"c",
			"cpp",
			"css",
			"dockerfile",
			"go",
            "git_config",
            "gitcommit",
            "git_rebase",
            "gitignore",
            "gitattributes",
			"html",
			"java",
			"javadoc",
			"javascript",
			"json",
			"lua",
			"markdown",
			"markdown_inline",
			"python",
			"rust",
			"toml",
			"typescript",
			"vim",
			"yaml",
		},
		highlight = { enabled = true },
		auto_install = true,
		sync_install = false,
	},
}
