return {
  'simrat39/symbols-outline.nvim',
  keys = {
    { '<Space>v', '<cmd>SymbolsOutline<CR>', desc = 'Open SymbolsOutline' },
  },
  config = function()
    require("symbols-outline").setup()
  end,
}
