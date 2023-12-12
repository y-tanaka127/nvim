-- encoding
vim.o.encofing = 'utf-8'
vim.scriptencoding = 'utf-8'

-- visual
vim.o.number = true
vim.o.incsearch = true
vim.o.cursorline = true
vim.o.ambiwidth = 'double'
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true

-- ターミナルを開いたら常にinsertモードに入る
vim.api.nvim_exec([[
  autocmd TermOpen * startinsert
]], false)

-- ターミナルモードで行番号を非表示
vim.api.nvim_exec([[
  autocmd TermOpen * setlocal norelativenumber
  autocmd TermOpen * setlocal nonumber
]], false)

