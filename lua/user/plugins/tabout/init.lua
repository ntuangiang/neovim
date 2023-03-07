return {
  'abecodes/tabout.nvim',
  config = function()
    require('tabout').setup {
      keys = {
        { '<tab>', mode = 'i' },
      },
      config = {
        completion = false,
      },
    }
  end,
  wants = { 'nvim-treesitter' }, -- or require if not used so far
  after = { 'nvim-cmp' }
}
