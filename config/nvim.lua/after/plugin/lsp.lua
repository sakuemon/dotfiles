local cmp = require('cmp')
local luasnip = require('luasnip')


local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

cmp.setup({
	preselect = cmp.PreselectMode.None,
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		['<C-j>'] = cmp.mapping(cmp.mapping.select_next_item(),{'i','c'}),
		['<C-k>'] = cmp.mapping(cmp.mapping.select_prev_item(),{'i','c'}),
		['<CR>'] = cmp.mapping.confirm({ select = true }),
		['<ESC>'] = cmp.mapping(function(fallback)
			cmp.mapping.abort()(fallback)
			vim.cmd('stopinsert')
		end, {'i', 's'}),
		['<TAB>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			elseif has_words_before() then
				cmp.complete()
			else
				fallback()
			end
		end, {'i', 's'}),
		['<S-TAB>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, {'i', 's'}),
	}),
	sources = cmp.config.sources({
		{ name = 'buffer' },
		{ name = 'luasnip', option = { use_show_condition = false} },
		{ name = 'nvim_lsp' },
		{ name = 'nvim_lsp_signature_help' },
		{ name = 'path' },
	})
})

require('luasnip.loaders.from_vscode').lazy_load()

require('cmp').setup.cmdline(':', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = 'cmdline'},
		{ namw = 'path'},
	}
})

require('cmp').setup.cmdline({'/','?'}, {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{name = 'buffer'}
	}
})

-- lsp server settings
local navic = require('nvim-navic')
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
local function onattach(client, bufnr)
	navic.attach(client, bufnr)
	-- require('aerial').on_attach(client, bufnr)
end


local lspconfig = require('lspconfig')
local configs = require 'lspconfig/configs'

-- if not configs.golangcilsp then
--  	configs.golangcilsp = {
-- 		default_config = {
-- 			cmd = {'golangci-lint-langserver'},
-- 			root_dir = lspconfig.util.root_pattern('.git', 'go.mod'),
-- 			init_options = {
-- 					command = { "golangci-lint", "run", "--enable-all", "--disable", "lll", "--out-format", "json", "--issues-exit-code=1" };
-- 			}
-- 		};
-- 	}
-- end

lspconfig.gopls.setup ({
	capabilities = capabilities,
	on_attach = onattach,
})

-- lspconfig.golangci_lint_ls.setup {
-- 	filetypes = {'go','gomod'}
-- }

vim.diagnostic.config({
	virtual_text = false,
})

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
	vim.lsp.handlers.hover,
	{
		border = "single"
	}
)


local function on_cursor_hold()
  -- if vim.lsp.buf.server_ready() then
  --   vim.diagnostic.open_float(nil, {focus=false})
  -- end
end

local diagnostic_hover_augroup_name = "lspconfig-diagnostic"
vim.api.nvim_set_option('updatetime', 500)
vim.api.nvim_create_augroup(diagnostic_hover_augroup_name, { clear = true })
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, { group = diagnostic_hover_augroup_name, callback = on_cursor_hold })
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function ()
	    vim.diagnostic.open_float(nil, {focus=false})
	end
})
