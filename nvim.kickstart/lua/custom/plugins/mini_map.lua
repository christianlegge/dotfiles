return {
  'echasnovski/mini.map',
  version = false,
  config = function()
    require('mini.map').setup {
      symbols = {
        encode = require('mini.map').gen_encode_symbols.dot '4x2',
        scroll_line = '',
      },
      window = { show_integration_count = false },
      integrations = {
        require('mini.map').gen_integration.builtin_search(),
        require('mini.map').gen_integration.diagnostic(),
        require('mini.map').gen_integration.gitsigns(),
      },
    }
    require('mini.map').toggle()
  end,
  -- version = false,
  -- config = function()
  --   require('mini.map').setup()
  -- end,
}
