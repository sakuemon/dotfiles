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
				version = 'v2.*',
				build = "make install_jsregexp"
			},
			{ "rafamadriz/friendly-snippets" },
		},
		fuzzy = {
			implementation = "prefer_rust_with_warning",
		},
		opts = {
			completion = {
				ghost_text = {
					enabled = true,
					show_with_menu = true,
				},
				list = {
					selection = { preselect = false },
					cycle = {
						from_top = true,
						from_bottom = true,
					},
				},
				menu = {
					auto_show = true,
					border = 'single',
					draw = {
						columns = {
							{ "label", "label_description", gap = 1 },
							{ "kind_icon", "kind" },
						},
						treesitter = { 'lsp' },
					},
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
						if cmp.is_active() then return cmp.select_next()
						elseif cmp.snippet_active() then return cmp.snippet_forward()
						end
					end,
					'snippet_forward',
					'fallback',
				},
				['<S-Tab>'] = {
					function(cmp)
						if cmp.is_active() then return cmp.select_prev()
						elseif cmp.snippet_active() then return cmp.snippet_backword()
						end
					end,
					'snippet_backward',
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
