return {
  'nat-418/boole.nvim',
  event = 'BufEnter',
  opts = {
    mappings = {
      increment = '<C-a>',
      decrement = '<C-x>',
      -- false
      -- no
      -- 6
      -- let
    },
    additions = {
      { 'production', 'development', 'test', 'sandbox' },
      { 'let', 'const' },
      { 'start', 'end' },
      { 'import', 'export' },
      { 'before', 'after' },
      { 'plus', 'minus' },
      { 'smart', 'truncate' },
      { 'left', 'right' },
      { 'is', 'are' },
    },
  },
}
