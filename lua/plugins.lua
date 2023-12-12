vim.api.nvim_set_var('mapleader', ' ');
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
  {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    options = { theme = 'dracula' },
  },
  {
    'nvim-tree/nvim-web-devicons',
  },
  {
    'akinsho/bufferline.nvim',
    version = "*",
  },
  {
    "folke/noice.nvim",

    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  },
  'tpope/vim-fugitive',
  { -- 選択した部分をコメントアウト
    'tomtom/tcomment_vim',
    config = true,
    keys = {
      { mode = "v", "?", ":'<,'>TComment<CR>" },
    }
  },
  {
    'neoclide/coc.nvim',
    branch = 'release',
  },
  {
    'nvim-treesitter/nvim-treesitter'
  },
  {
    'lambdalisue/fern.vim',
    dependencies = {
      'lambdalisue/nerdfont.vim',
      'lambdalisue/fern-renderer-nerdfont.vim',
      'lambdalisue/glyph-palette.vim'
    },
    keys = {
      { mode = 'n', '<Leader>e', ':Fern .<CR>' }
    }
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    main = "ibl",
    opts = {}
  },
  {
    'echasnovski/mini.nvim',
    version = '*'
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make'
  },
  {
    'rbtnn/vim-ambiwidth'
  },
  {
    'norcalli/nvim-colorizer.lua'
  },
}
