return {
  {
    'preservim/nerdtree',
    config = function()
      vim.keymap.set('n', '<leader>n', ':NERDTreeFocus<Enter>')
      vim.keymap.set('n', '<leader>files', ':NERDTree<Enter>')
    end,
  },
}
