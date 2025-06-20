return {
    "nvimtools/none-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "VeryLazy",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
            },
        })
    end,
    keys = {
        {
            "<leader>lf",
            function()
                vim.lsp.buf.format()
            end,
        }
    },
}

