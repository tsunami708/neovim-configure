return {
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000,
  init = function()
    vim.cmd[[colorscheme tokyonight]]
    vim.cmd('command! Dark colorscheme tokyonight-night')
    vim.cmd('command! Light colorscheme tokyonight-day')
  end
}

