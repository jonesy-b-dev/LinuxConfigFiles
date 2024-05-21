vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-e>', '<C-e>zz', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'n', 'nzzzv', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'N', 'Nzzzv', { noremap = true, silent = true})

