-- 快捷键设置，请确保此配置文件在init.lua中被第一项加载
local opts = { noremap = true, silent = true}
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('i','<C-s>','<cmd>w<cr>')
vim.keymap.set('i','<C-z>','<cmd>u<cr>')
vim.keymap.set('x', '>', '>gv', { desc = 'Indent and keep selection' })
vim.keymap.set('x', '<', '<gv', { desc = 'Outdent and keep selection' })

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- 居中跳转
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)
vim.keymap.set('n', 'gd', 'gdzzzv', opts)
vim.keymap.set('n', 'gi', 'gDzzzv', opts)
vim.keymap.set('n', 'gD', 'gDzzzv', opts)
vim.keymap.set('n', 'gr', 'gDzzzv', opts)

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- Buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<C-i>', '<C-i>', opts) -- to restore jump forward
vim.keymap.set('n', '<leader>x', ':Bdelete!<CR>', opts) -- close buffer
vim.keymap.set('n', '<leader>b', '<cmd> enew <CR>', opts) -- new buffer
vim.keymap.set('n', '<leader>X', '<cmd>%bdelete<bar>Neotree<cr>',opts) -- close all buffer

-- 不剪切
vim.keymap.set({"n", "v"}, "d", '"_d', { noremap = true })
vim.keymap.set("n", "x", '"_x', { noremap = true })
vim.keymap.set("n", "c", '"_c', { noremap = true })
vim.keymap.set("n", "s", '"_s', { noremap = true })
