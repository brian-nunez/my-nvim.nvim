return {
  {
    'coffebar/neovim-project',
    opts = {
      projects = { -- define project roots
        '~/Documents/workspace/*',
        '~/.config/*',
      },
      picker = {
        type = 'telescope', -- or "fzf-lua"
      },
    },
    init = function()
      -- enable saving the state of plugins in the session
      vim.opt.sessionoptions:append 'globals' -- save global variables that start with an uppercase letter and contain at least one lowercase letter.

      -- create key mappings for `:NeovimProjectDiscover`
      -- and `:Ex` commands after a project is loaded
      vim.api.nvim_set_keymap('n', '<leader>pd', ':NeovimProjectDiscover<Enter>', { noremap = true, silent = true })
      vim.api.nvim_create_autocmd('DirChanged', {
        pattern = { '*' },
        desc = 'Update git env for dotfiles after changing directory',
        callback = function()
          -- run the :Ex command after changing the directory
          vim.cmd 'Ex'
        end,
      })
    end,
    dependencies = {
      { 'nvim-lua/plenary.nvim' },
      -- optional picker
      { 'nvim-telescope/telescope.nvim', tag = '0.1.4' },
      -- optional picker
      { 'ibhagwan/fzf-lua' },
      { 'Shatur/neovim-session-manager' },
    },
    lazy = false,
    priority = 100,
  },
}
