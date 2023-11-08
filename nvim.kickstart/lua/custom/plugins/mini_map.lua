return {
  'wfxr/minimap.vim',
  lazy = false,
  init = function()
    vim.g.minimap_width = 10
    vim.g.minimap_auto_start = 1
    vim.g.minimap_auto_start_win_enter = 1
  end,
  -- version = false,
  -- config = function()
  --   require('mini.map').setup()
  -- end,
}
