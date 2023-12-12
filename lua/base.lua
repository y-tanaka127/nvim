vim.o.encofing = 'utf-8'
vim.scriptencoding = 'utf-8'

-- visual
vim.o.number = true
vim.o.incsearch = true
vim.o.cursorline = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.helplang = 'ja'
vim.termguicolors = true

-- 不可視文字可視化
vim.o.list = true

-- statusline を下部に固定
vim.o.laststatus = 3

vim.o.mouse = false
vim.opt.signcolumn = 'yes'
vim.o.backup = false
vim.opt.swapfile = false
-- ターミナルを開いたら常にinsertモードに入る
vim.api.nvim_exec([[
  autocmd TermOpen * startinsert
]], false)

-- ターミナルモードで行番号を非表示
vim.api.nvim_exec([[
  autocmd TermOpen * setlocal norelativenumber
  autocmd TermOpen * setlocal nonumber
]], false)
