-- Set (Relative) lines
vim.wo.number = true
vim.wo.relativenumber = true

-- Set tab spacing
vim.opt.shiftwidth=4
vim.opt.tabstop=4

-- Set terminal colors
vim.opt.tgc = false

--- REMAPS
vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-e>', '<C-e>zz', { noremap = true, silent = true})
