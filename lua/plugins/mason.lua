return {
    "mason-org/mason.nvim",
    event = "VeryLazy",
    dependencies = {
        "neovim/nvim-lspconfig",
        "mason-org/mason-lspconfig.nvim",
    },
    opts = {},
    config = function(_, opts)
        -- initialize  mason
        require("mason").setup(opts)

        -- setup mason-lspconfig, install LSP
        require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls", "pyright", "ts_ls", "html", "cssls", "clangd" },
            automatic_installation = true,
        })

        -- global `capabilities`，from cmp-nvim-lsp
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        -- lua_ls
        require("lspconfig").lua_ls.setup({
            capabilities = capabilities,
            settings = {
              Lua = {
                diagnostics = {
                  globals = { "vim" }, -- recognize vim global variable REMAINS UNSOLVED
                }
              }
            }
        })

        -- pyright
        require("lspconfig").pyright.setup({
            capabilities = capabilities,
        })

        -- typescript and javascript
        require("lspconfig").ts_ls.setup({
            capabilities = capabilities,
        })

        -- c and cpp
        require("lspconfig").clangd.setup({
            capabilities = capabilities,
        })

        -- show details
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

