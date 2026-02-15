vim.g.have_nerd_font = true -- nerd字体声明

vim.o.colorcolumn = "120"  -- 高亮第120列

vim.o.background = "dark" -- 默认深色
-- 光标设置
vim.o.guicursor = "a:ver25-blinkon150-blinkoff150-blinkwait100"
local function update_cursor_color()
  if vim.o.background == "dark" then
    vim.api.nvim_set_hl(0, "MyCursor", { bg = "#FFFFFF", fg = "NONE" })
  else
    vim.api.nvim_set_hl(0, "MyCursor", { bg = "#000000", fg = "NONE" })
  end
  vim.o.guicursor = "a:ver25-blinkon150-blinkoff150-blinkwait100-MyCursor"
end
local cursor_group = vim.api.nvim_create_augroup("CursorColorGroup", { clear = true })
vim.api.nvim_create_autocmd({ "ColorScheme", "OptionSet" }, {
  group = cursor_group,
  callback = function(args)
    if args.event == "OptionSet" and args.match ~= "background" then return end
    update_cursor_color()
  end,
})
update_cursor_color()

vim.o.number = true -- 行号
vim.o.relativenumber = true -- 相对行号

vim.o.mouse = 'a' -- 鼠标控制开启

vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end
) -- 同步系统剪切板

-- 缩进设置
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.expandtab = true -- 空格代替\t
vim.o.shiftwidth = 2
vim.o.smartindent = true
vim.o.breakindent = true
vim.o.autoindent = true

--[[
全小写 ~~ 忽略大小写
含(全)大写 ~~ 精确匹配
混合 ~~ 精确匹配
\C 大小写敏感强制
\c 强制大小写不区分
--]]
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.signcolumn = 'yes' -- 符号列显示

vim.o.cursorline = true -- 编辑行高亮

vim.o.updatetime = 250 -- Decrease update time
vim.o.timeoutlen = 300 -- Decrease mapped sequence wait time

vim.o.linebreak = true -- 不要单词内换行

vim.o.showmode = false

vim.opt.termguicolors = true

vim.opt.runtimepath:remove '/usr/share/vim/vimfiles' -- separate vim plugins from neovim in case vim still in use
