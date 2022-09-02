return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use 'AndrewRadev/linediff.vim'
	use 'airblade/vim-gitgutter'
	use 'aklt/plantuml-syntax'
	use 'arthurxavierx/vim-caser'
	use 'benmills/vimux'
	use 'buoto/gotests-vim'
	use 'christoomey/vim-tmux-navigator'
	use 'honza/vim-snippets'
	use {
		"hrsh7th/nvim-cmp",
		requires = {
			'hrsh7th/cmp-nvim-lsp',
		},
		tag = 'v0.0.1',
	}
	use "hrsh7th/cmp-buffer"
	use 'lambdalisue/gina.vim'
	use 'liuchengxu/vista.vim'
	use 'lukas-reineke/indent-blankline.nvim'
	use 'mhartington/formatter.nvim'
	use 'machakann/vim-sandwich'
	use {'nvim-treesitter/nvim-treesitter'}
	use { 'phaazon/hop.nvim', branch = 'v2' }
	use 'romainl/vim-qf'
	use 'rapan931/lasterisk.nvim'
	use 'sebdah/vim-delve'
	use 't9md/vim-quickhl'
	use 'tpope/vim-commentary'
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
