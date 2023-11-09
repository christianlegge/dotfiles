vim.cmd [[ let g:neo_tree_remove_legacy_commands = 1 ]]

return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      window = {
        mappings = {
          ['s'] = 'none',
          ['<space>'] = 'none',
          -- ['<leader>e'] = ':Neotree toggle',
        },
      },
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = true,
          hide_hidden = false,
        },
        follow_current_file = {
          enabled = true,
        },
        group_empty_dirs = true,
      },
    }
  end,
}
