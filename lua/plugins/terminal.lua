return {
  "CRAG666/betterTerm.nvim",
  opts = {
    position = 'bot',
    size = 20,
    jump_tab_mapping = 'A-$Tab'
  },
  keys = {
    {
      mode = {'n', 't', 'i'},
      '<C-\\>',
      function()
        require('betterTerm').open()
      end,
      desc = 'Open BetterTerm 0',
    },
  },
}
