local mark = require 'harpoon.mark'
local ui = require 'harpoon.ui'

vim.wo.relativenumber = true
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.smarttab = true

-- Map Leader
vim.g.maplocalleader = ' '

vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap('i', '<Tab>', 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.g.copilot_filetypes = {
  ['*'] = true,
  ['javascript'] = true,
  ['typescript'] = true,
  ['html'] = true,
  ['lua'] = true,
  ['rust'] = true,
  ['c'] = true,
  ['c#'] = true,
  ['c++'] = true,
  ['go'] = true,
  ['python'] = true,
  ['yml'] = true,
  ['yaml'] = true,
}

vim.keymap.set('n', 'j', 'jzz')
vim.keymap.set('n', 'k', 'kzz')

vim.keymap.set('n', '<leader>dir', vim.cmd.Ex)
vim.keymap.set('n', '<leader>format', '=ap')

-- Harpoon mapping
vim.keymap.set('n', '<leader>ha', mark.add_file)
vim.keymap.set('n', '<leader>hm', ui.toggle_quick_menu)
vim.keymap.set('n', '<C-s>', ui.nav_next)
vim.keymap.set('n', '<C-a>', mark.rm_file)
vim.keymap.set('n', '<C-c>', mark.clear_all)

vim.keymap.set('n', '<leader>h1', function()
  ui.nav_file(1)
end)
vim.keymap.set('n', '<leader>h2', function()
  ui.nav_file(2)
end)
vim.keymap.set('n', '<leader>h3', function()
  ui.nav_file(3)
end)
vim.keymap.set('n', '<leader>h4', function()
  ui.nav_file(4)
end)

-- NerdTree mapping
vim.keymap.set('n', '<leader>n', ':NERDTreeFocus<Enter>')
vim.keymap.set('n', '<leader>files', ':NERDTree<Enter>')
return {}
