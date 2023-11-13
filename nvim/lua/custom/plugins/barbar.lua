local map = function(keys, func, desc)
  if desc then
    desc = 'Buffer: ' .. desc
  end

  vim.keymap.set('n', keys, func, {  noremap = true, silent = true, desc = desc })
end

local opts = { noremap = true, silent = true }

-- Move to previous/next
map('<M-,>', '<Cmd>BufferPrevious<CR>', 'Previous')
map('<M-.>', '<Cmd>BufferNext<CR>', 'Next')
-- Re-order to previous/next
map('<M-<>', '<Cmd>BufferMovePrevious<CR>', 'Move previous')
map('<M->>', '<Cmd>BufferMoveNext<CR>', 'Move next')
-- Goto buffer in position...
map('<M-1>', '<Cmd>BufferGoto 1<CR>', 'Go to 1st')
map('<M-2>', '<Cmd>BufferGoto 2<CR>', 'Go to 2nd')
map('<M-3>', '<Cmd>BufferGoto 3<CR>', 'Go to 3rd')
map('<M-4>', '<Cmd>BufferGoto 4<CR>', 'Go to 4th')
map('<M-5>', '<Cmd>BufferGoto 5<CR>', 'Go to 5th')
map('<M-6>', '<Cmd>BufferGoto 6<CR>', 'Go to 6th')
map('<M-7>', '<Cmd>BufferGoto 7<CR>', 'Go to 7th')
map('<M-8>', '<Cmd>BufferGoto 8<CR>', 'Go to 8th')
map('<M-9>', '<Cmd>BufferGoto 9<CR>', 'Go to 9th')
map('<M-0>', '<Cmd>BufferLast<CR>', 'Go to last')
-- Pin/unpin buffer
map('<M-p>', '<Cmd>BufferPin<CR>', 'Pin')
-- Close buffer
map('<C-x>', '<Cmd>BufferClose<CR>', 'Close')
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('<C-p>', '<Cmd>BufferPick<CR>', 'Pick')
-- Sort automatically by...
map('<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', 'Order by buffer number')
map('<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', 'Order by directory')
map('<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', 'Order by language')
map('<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', 'Order by window number')

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used

return {
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = true end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
  },
}
