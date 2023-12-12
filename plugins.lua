return {
  { -- colorscheme
    'Mofiqul/dracula.nvim',
      enabled = true,
      lazy = false,
      priority = 1000,
      config = function()
        vim.cmd([[colorscheme dracula]])
      end
  },
  -- 'vim-airline/vim-airline-themes',
  -- {
  --   'vim-airline/vim-airline',
  --     config = function()
  --       -- vim-airlineの設定
  --       vim.cmd[[let g:airline_theme='powerlineish']];
  --       vim.cmd[[let g:airline_powerline_fonts = 1]];
  --       vim.cmd[[let g:airline#extensions#tabline#enabled = 1]];
  --       vim.cmd[[let g:airline#extensions#tabline#buffer_idx_mode = 1]]
  --       vim.cmd[[let g:airline#extensions#tabline#buffer_idx_format = {
  --         \'0': '0 ','1': '1 ','2': '2 ',
  --         \'3': '3 ','4': '4 ','5': '5 ',
  --         \'6': '6 ','7': '7 ','8': '8 ','9': '9 '
  --       \}]]
  --     end,      
  -- },
  {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    options = { theme = 'dracula' },
  },
  {
    'akinsho/bufferline.nvim', 
    version = "*", 
    dependencies = 'nvim-tree/nvim-web-devicons',
  },
  'tpope/vim-fugitive',
  { -- 選択した部分をコメントアウト
    'tomtom/tcomment_vim',
      config = true,
      keys = {
        {mode = "v", "?", ":'<,'>TComment<CR>"},
      }
  }
}
