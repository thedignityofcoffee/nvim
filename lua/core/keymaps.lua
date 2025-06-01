-- Keymaps for Moving

vim.keymap.set('n', 'J', '5j', { noremap = true })
vim.keymap.set('n', 'K', '5k', { noremap = true })
vim.keymap.set('n', 'H', '7h', { noremap = true })
vim.keymap.set('n', 'L', '7l', { noremap = true })

vim.keymap.set('v', 'J', '5j', { noremap = true })

-- Keymaps for Switching
vim.keymap.set("i", "jj", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })

vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true })

-- Keymaps for entering insert model with ';'
vim.keymap.set('n', ';', ':', { noremap = true })


