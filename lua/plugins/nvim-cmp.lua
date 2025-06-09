return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter", -- 在插入模式时加载
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",     -- LSP 来源
    "hrsh7th/cmp-buffer",       -- buffer 来源
    "hrsh7th/cmp-path",         -- 路径补全
    "hrsh7th/cmp-cmdline",      -- 命令行补全
    "L3MON4D3/LuaSnip",         -- 可选：代码片段引擎
    "saadparwaiz1/cmp_luasnip", -- 与 LuaSnip 协同
  },
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body) -- 使用 LuaSnip 扩展
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }), -- 选择并确认补全项
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
      }, {
        { name = "buffer" },
        { name = "path" },
      }),
    })

    -- 命令行补全配置
    cmp.setup.cmdline(":", {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = "path" },
        { name = "cmdline" },
      },
    })
  end,
}

