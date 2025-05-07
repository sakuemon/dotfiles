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
	-- {
	-- 	"hrsh7th/nvim-cmp",
	-- 	dependencies =  {
	-- 		'hrsh7th/cmp-buffer',
	-- 		'hrsh7th/cmp-cmdline',
	-- 		'hrsh7th/cmp-path',
	-- 		'hrsh7th/cmp-nvim-lsp',
	-- 		'hrsh7th/cmp-nvim-lsp-signature-help',
	-- 		'saadparwaiz1/cmp_luasnip',
	-- 	},
	-- 	version = 'v0.0.1',
	-- },
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
	{
		'Saghen/blink.cmp',
		version = '1.*',
		dependencies = {
			{
				'L3MON4D3/LuaSnip',
				version = 'v2.*'
			},
			{ "rafamadriz/friendly-snippets" },
		},
		fuzzy = {
			implementation = "prefer_rust_with_warning",
		},
		opts = {
			completion = {
				menu = {
					auto_show = true,
					border = 'single'
				},
				documentation = {
					auto_show = true,
					auto_show_delay_ms = 500,
					window = { border = 'single' }
				},
			},
			signature = { window = { border = 'single' } },
			keymap = {
				preset = "none",
				['<C-j>'] = { 'select_next', 'fallback' },
				['<C-k>'] = { 'select_prev', 'fallback' },
				['<Tab>'] = {
					function(cmp)
						if cmp.snippet_active() then return cmp.accept()
						else return cmp.select_and_accept() end
					end,
					'snippet_forward',
					'fallback',
				},
				['<CR>'] = { 'accept', 'fallback'},
				['<ESC>'] = { 'hide', 'fallback' },
			},
			snippets = { preset = 'luasnip' },
			sources = {
				default = { 'lsp', 'path', 'snippets', 'buffer' },
				providers = {
					snippets = {
						score_offset = 10,
					},
				},
			},
		},
		config = function(_, opts)
			require('luasnip').setup({
				enable_autosnippets = true,
			})
			require('luasnip.loaders.from_vscode').lazy_load()
			require("luasnip.loaders.from_lua").lazy_load()
			require("luasnip.loaders.from_lua").lazy_load({
				paths = { '~/.config/nvim/luasnip' },
			})

			require('blink.cmp').setup(opts)
		end,
	},
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
		}
	},
	{
		'neovim/nvim-lspconfig',
		dependencies = {
			"SmiteshP/nvim-navic",
			'Saghen/blink.cmp',
		},
	},

	{tele_ovs()},
}
