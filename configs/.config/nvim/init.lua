require("jonesyConf.core")
require("jonesyConf.lazy")
require("jonesyConf.after")

-- Set (relative) lines
vim.wo.number = true
vim.wo.relativenumber = true

-- Set tab spacing
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- Set terminal colors
vim.opt.tgc = false

-- Turn on syntax highlighting
vim.api.nvim_create_autocmd("VimEnter", {
  pattern = "*",
  command = "TMEnable highlight"
})
