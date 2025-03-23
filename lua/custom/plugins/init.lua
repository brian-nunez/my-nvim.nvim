vim.wo.relativenumber = true
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.smarttab = true

-- Map Leader
vim.g.maplocalleader = ' '

vim.keymap.set('n', 'j', 'jzz')
vim.keymap.set('n', 'k', 'kzz')

vim.keymap.set('n', '<leader>dir', vim.cmd.Ex)
vim.keymap.set('n', '<leader>format', '=ap')

return {}
