-- 変数設定
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
-- <space>をリーダーキーに
vim.api.nvim_set_var('mapleader', ' ')

-- jjでESC
map('i', 'jj', '<ESC>', opts)

-- F3でハイライトを消す
map('n','<F3>',':noh<Enter>',opts)

-- 行内でもj,kで移動可能
map('n','j','gj',opts)
map('n','<Down>','gj',opts)
map('n','k','gk',opts)
map('n','<Up>','gk',opts)

-- <space>+aで全選択
map('n','<Leader>a' ,'ggVG',opts) 

-- 下分割でターミナルモードを起動
map('n','<Leader>t','<cmd>belowright new<CR><cmd>terminal<CR>',opts)

-- <ESC>でターミナルモードから抜ける
map('t','<ESC>', '<C-\\><C-n>',opts)

