-- 変数設定
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
-- <space>をリーダーキーに
vim.api.nvim_set_var('mapleader', ' ')

-- jjでESC
map('i', 'jj', '<ESC>', opts)

-- ctrl+sで上書き保存
map('n', '<C-s>', ':w<CR>', opts)

-- F3でハイライトを消す
map('n', '<F3>', ':noh<CR>', opts)

-- 行内でもj,kで移動可能
map('n', 'j', 'gj', opts)
map('n', '<Down>', 'gj', opts)
map('n', 'k', 'gk', opts)
map('n', '<Up>', 'gk', opts)

-- <space>+aで全選択
map('n', '<Leader>a', 'ggVG', opts)

-- <space>+<F12>でコンフィグファイルを開く
map('n', '<Leader><F12>', ':Fern ~/.config/nvim -reveal=% -drawer -toggle -width=30<CR>', opts)

-- 画面分割
map('n', 'ss', ':split<Return><C-w>w', opts)
map('n', 'sv', ':vsplit<Return><C-w>w', opts)

-- アクティブウィンドウの移動
map('n', 'sh', '<C-w>h', opts)
map('n', 'sk', '<C-w>k', opts)
map('n', 'sj', '<C-w>j', opts)
map('n', 'sl', '<C-w>l', opts)

-- tabline
map("n", "<C-l>", ":bnext<Return>", opts)
map("n", "<C-h>", ":bprevious<Return>", opts)

-- colorcheck
map("n", "<Leader>0", ':ColorizerToggle<CR>', opts)

-- telescope
map('n', '<C-p>p', ':Telescope find_files<CR>', opts)
map('n', '<C-p>l', ':Telescope live_grep<CR>', opts)
map('n', '<C-p>b', ':Telescope buffers<CR>', opts)
map('n', '<C-p>h', ':Telescope help_tags<CR>', opts)

-- coc補完時にtabで選択
local copts = { silent = true, noremap = true, expr = true, replace_keycodes = false }
map('i', '<TAB>', 'coc#pum#visible() ? coc#pum#next(1) : "<Tab>"', copts)
map('i', '<S-TAB>', [[coc#pum#visible() ? coc#pum#prev(1) : '<C-h>']], copts)
map('i', '<CR>', [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], copts)
-- Fern
map('n', '<Leader>e', ':Fern . -reveal=% -drawer -toggle -width=30<CR>', opts)

-- 下分割でターミナルモードを起動
map('n', "<C-t>", ':ToggleTerm direction=horizontal<CR>', opts)
map('n', '<C-t>f', ':ToggleTerm direction=float<CR>', opts)
map('t', '<C-t>', '<ESC><CR> :ToggleTerm<CR>', opts)
-- map('t', '<C-t>', [[<C-\><C-n>]], opts)

-- <ESC>でターミナルモードから抜ける
map('t', '<ESC>', '<C-\\><C-n>', opts)
