vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.shiftwidth=4
vim.opt.tabstop=4


--- REMAPS
vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-e>', '<C-e>zz', { noremap = true, silent = true})
