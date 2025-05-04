local function tele_ovs()
	local_file = '~/Projects/github.com/sakuemon/telescope-overseer.nvim'
	localfile_exists = vim.fn.filereadable(local_file)
	if localfile_exists == 1 then
		return local_file
	else
		return 'sakuemon/telescope-overseer.nvim'
	end
end



return {
	{ 'AndrewRadev/linediff.vim' },
	{ 'akinsho/toggleterm.nvim' },
	{ 'aklt/plantuml-syntax' },
	{ 'arthurxavierx/vim-caser' },
	{ 'benmills/vimux' },
	{ 'buoto/gotests-vim' },
	{ 'christoomey/vim-tmux-navigator' },
	{ 'ggandor/leap.nvim' },
	{
		"hrsh7th/nvim-cmp",
		dependencies =  {
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-cmdline',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-nvim-lsp-signature-help',
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',
		},
		version = 'v0.0.1',
	},
	{ 'kyazdani42/nvim-web-devicons' },
	{ 'kylechui/nvim-surround' },
	{ 'lewis6991/gitsigns.nvim' },
	{ 'lukas-reineke/indent-blankline.nvim' },
	{ 'Mofiqul/dracula.nvim' },
	{
		'nvim-neotest/neotest',
		dependencies = {
			'nvim-lua/plenary.nvim',
			'nvim-neotest/neotest-go',
		},
	},
	{ 'NeogitOrg/neogit' },
	{ 'nvim-treesitter/nvim-treesitter' },
	{ 'nvim-lualine/lualine.nvim' },
	{ "nvim-neotest/nvim-nio" },
	
	{ 'romainl/vim-qf' },
	{ "rafamadriz/friendly-snippets" },
	{ 'rapan931/lasterisk.nvim' },
	{ "rcarriga/nvim-dap-ui",
		dependencies = {
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
		end,
	},
	{ 'rcarriga/nvim-notify' },
	{
		'ruifm/gitlinker.nvim',
	    dependencies = 'nvim-lua/plenary.nvim',
	},
	{ 'sebdah/vim-delve' },
	{ 'sindrets/diffview.nvim' },
    {
		'stevearc/aerial.nvim',
		config = function() require('aerial').setup() end
	},
	{ 'stevearc/dressing.nvim' },
	{ 'stevearc/overseer.nvim' },
	{ 't9md/vim-quickhl' },
	{ 'terrortylor/nvim-comment' },
	{
		'nvim-telescope/telescope.nvim',
		dependencies = {
			'nvim-lua/plenary.nvim',
			{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
		},
	},

	{
		'neovim/nvim-lspconfig',
		dependencies = {
			"SmiteshP/nvim-navic"
		}
	},

	{tele_ovs()},
}
