return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use 'AndrewRadev/linediff.vim'
	use 'airblade/vim-gitgutter'
	use 'aklt/plantuml-syntax'
	use 'arthurxavierx/vim-caser'
	use 'benmills/vimux'
	use 'buoto/gotests-vim'
	use 'christoomey/vim-tmux-navigator'
	use {
		"hrsh7th/nvim-cmp",
		requires = {
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-cmdline',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-nvim-lsp-signature-help',
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',
		},
		tag = 'v0.0.1',
	}
	use 'kyazdani42/nvim-web-devicons'
	use 'lambdalisue/gina.vim'
	use 'lukas-reineke/indent-blankline.nvim'
	use 'machakann/vim-sandwich'
	use 'Mofiqul/dracula.nvim'
	use 'nvim-treesitter/nvim-treesitter'
	use 'nvim-lualine/lualine.nvim'
	use { 'phaazon/hop.nvim', branch = 'v2' }
	
	use 'romainl/vim-qf'
	use "rafamadriz/friendly-snippets"
	use 'rapan931/lasterisk.nvim'
	use {
		"rcarriga/nvim-dap-ui",
		requires = {
			"mfussenegger/nvim-dap",
			"leoluz/nvim-dap-go",
			"nvim-treesitter/nvim-treesitter"
		},
		config = function ()
			vim.fn.sign_define('DapBreakpoint', {text='⛔', texthl='', linehl='', numhl=''})
			vim.fn.sign_define('DapStopped', {text='👉', texthl='', linehl='', numhl=''})
--			require('dapui').setup()
--			require('dap-go').setup()
--			require('dap.ext.vscode').load_launchjs()
		end
	}
	use 'sebdah/vim-delve'
	use 'simrat39/symbols-outline.nvim'
	use 'stevearc/overseer.nvim'
	use 't9md/vim-quickhl'
	use 'terrortylor/nvim-comment'
	use 'tpope/vim-fugitive'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = {
			'nvim-lua/plenary.nvim',
			{'nvim-telescope/telescope-fzf-native.nvim', run = 'make'},
		}
	}

	use {
		'neovim/nvim-lspconfig',
		requires = {
			"SmiteshP/nvim-navic"
		}
	}

	if packer_bootstrap then
		require('packer').sync()
	end
end)
