vim.api.nvim_set_var('mapleader', ' ');
return {
	'vim-jp/vimdoc-ja',
	{ -- colorscheme
		'Mofiqul/dracula.nvim',
		enabled = true,
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme dracula]])
		end,
	},
	{
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
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
		config = function()
			vim.cmd([[let g:fern#renderer = 'nerdfont']]);
			vim.cmd([[let g:fern#default_hidden=1]]);
		end
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
	{
		'akinsho/toggleterm.nvim',
		version = "*",
		config = true
	},
	{
		'dinhhuy258/git.nvim',
	},
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end
	},
	{
		'yamatsum/nvim-cursorline',
	},
	{
		'windwp/nvim-ts-autotag',
	},
	{
		'windwp/nvim-autopairs',
  },
	{
		'vim-denops/denops.vim',
  },
	{
		'skanehira/denops-silicon.vim',
	}
}
