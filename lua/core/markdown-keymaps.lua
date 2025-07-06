-- 设置快捷键选项（buffer-local）
local opts = { noremap = true, silent = true, buffer = true }

-- 快捷设置函数
local map = vim.keymap.set

-- 插入模式：Markdown 快捷键
map("i", ",b", "**** <++><Esc>F*hi", opts)              -- Bold
map("i", ",i", "** <++><Esc>F*i", opts)                 -- Italic
map("i", ",s", "~~~~ <++><Esc>F~hi", opts)              -- Strikethrough
map("i", ",c", "`` <++><Esc>F`i", opts)                 -- Inline code
map("i", ",C", "```<CR><++><CR>```<CR><CR><++><Esc>4kA", opts) -- Code block
map("i", ",t", "- [ ] ", opts)                          -- Task list
map("i", ",l", "[](<++>) <++><Esc>F[a", opts)           -- Link
map("i", ",p", "![](<++>) <++><Esc>F[a", opts)          -- Image
map("i", ",1", "# <CR><++><Esc>kA", opts)               -- Heading 1
map("i", ",2", "## <CR><++><Esc>kA", opts)              -- Heading 2
map("i", ",3", "### <CR><++><Esc>kA", opts)             -- Heading 3
map("i", ",4", "#### <CR><++><Esc>kA", opts)            -- Heading 4
map("i", ",-", "--------<CR>", opts)                    -- Horizontal line
map("i", ",e", "---<CR><CR>", opts)                     -- Empty line

-- 插入模式 & 普通模式：跳转 <++> 占位符（也就是你想要的 <leader><leader>）
local global_opts = { noremap = true, silent = true }

-- 普通模式下：<leader><leader> 跳转到 <++>
vim.keymap.set("n", "<leader><leader>", "/<++><CR>:nohlsearch<CR>\"_c4l", global_opts)

-- 插入模式下：<leader><leader> 跳转到 <++>
vim.keymap.set("i", "<leader><leader>", "<Esc>/<++><CR>:nohlsearch<CR>\"_c4l", global_opts)

