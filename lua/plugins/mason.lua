return {
    "mason-org/mason.nvim",
    event = "VeryLazy",
    dependencies = {
        "neovim/nvim-lspconfig",
        "mason-org/mason-lspconfig.nvim",
    },
    opts = {},
    config = function(_, opts)
        -- 初始化 mason
        require("mason").setup(opts)

        -- 设置 mason-lspconfig，自动安装 lua_ls
        require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls" },
            automatic_installation = true,
        })

        -- 启用 lua_ls 语言服务器
        require("lspconfig").lua_ls.setup({})

        -- 设置诊断显示样式
        vim.diagnostic.config({
            virtual_text = {
                prefix = "",
                spacing = 4,
            },
            signs = true,
            underline = true,
            update_in_insert = true,
            severity_sort = true,
        })
    end,
}

