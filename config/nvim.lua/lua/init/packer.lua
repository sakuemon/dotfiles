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
	use 'lambdalisue/gina.vim'
	use 'lukas-reineke/indent-blankline.nvim'
	use 'machakann/vim-sandwich'
	use {'nvim-treesitter/nvim-treesitter'}
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use { 'phaazon/hop.nvim', branch = 'v2' }
	
	use 'romainl/vim-qf'
	use "rafamadriz/friendly-snippets"
	use 'rapan931/lasterisk.nvim'
	use 'sebdah/vim-delve'
	use 'simrat39/symbols-outline.nvim'
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

	use 'neovim/nvim-lspconfig'

	if packer_bootstrap then
		require('packer').sync()
	end
end)
