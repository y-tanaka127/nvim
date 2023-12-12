-- 変数設定
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
-- <space>をリーダーキーに
vim.api.nvim_set_var('mapleader', ' ')

-- jjでESC
map('i', 'jj', '<ESC>', opts)

-- F3でハイライトを消す
map('n', '<F3>', ':noh<Enter>', opts)

-- 行内でもj,kで移動可能
map('n', 'j', 'gj', opts)
map('n', '<Down>', 'gj', opts)
map('n', 'k', 'gk', opts)
map('n', '<Up>', 'gk', opts)

-- <space>+aで全選択
map('n', '<Leader>a', 'ggVG', opts)

-- 下分割でターミナルモードを起動
map('n', '<Leader>t', '<cmd>belowright new<CR><cmd>terminal<CR>', opts)

-- <ESC>でターミナルモードから抜ける
map('t', '<ESC>', '<C-\\><C-n>', opts)

map('n', '<F1>', ':edit $MYVIMRC<CR>', opts)

-- 画面分割
map('n', 'ss', ':split<Return><C-w>w', opts)
map('n', 'sv', ':vsplit<Return><C-w>w', opts)

-- アクティブウィンドウの移動
map('n', 'sh', '<C-w>h', opts)
map('n', 'sk', '<C-w>k', opts)
map('n', 'sj', '<C-w>j', opts)
map('n', 'sl', '<C-w>l', opts)

-- tabline
map("n", "<C-n>", ":bnext<Return>", opts)
map("n", "<C-p>", ":bprevious<Return>", opts)

-- colorcheck
map("n", "<Leader>0", ':ColorizerToggle<CR>', opts)
-- telescope
-- local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
