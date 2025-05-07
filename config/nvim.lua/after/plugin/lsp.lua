
-- require('cmp').setup.cmdline(':', {
-- 	mapping = cmp.mapping.preset.cmdline(),
-- 	sources = {
-- 		{ name = 'cmdline'},
-- 		{ namw = 'path'},
-- 	}
-- })

-- require('cmp').setup.cmdline({'/','?'}, {
-- 	mapping = cmp.mapping.preset.cmdline(),
-- 	sources = {
-- 		{name = 'buffer'}
-- 	}
-- })

-- lsp server settings
-- local navic = require('nvim-navic')
-- local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
-- local function onattach(client, bufnr)
-- 	navic.attach(client, bufnr)
-- 	-- require('aerial').on_attach(client, bufnr)
-- end


-- local lspconfig = require('lspconfig')
-- local configs = require('lspconfig/configs')

-- vim.lsp.config('*', {
-- 	capabilities = require('blink.cmp').get_lsp_capabilities()
-- })


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

-- lspconfig.gopls.setup ({
-- 	capabilities = cap,
	-- on_attach = onattach,
-- })

-- lspconfig.golangci_lint_ls.setup {
-- 	filetypes = {'go','gomod'}
-- }

-- vim.diagnostic.config({
-- 	virtual_text = false,
-- })

-- vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
-- 	vim.lsp.handlers.hover,
-- 	{
-- 		border = "single"
-- 	}
-- )


-- local function on_cursor_hold()
  -- if vim.lsp.buf.server_ready() then
  --   vim.diagnostic.open_float(nil, {focus=false})
  -- end
-- end

-- local diagnostic_hover_augroup_name = "lspconfig-diagnostic"
-- vim.api.nvim_set_option('updatetime', 500)
-- vim.api.nvim_create_augroup(diagnostic_hover_augroup_name, { clear = true })
-- vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, { group = diagnostic_hover_augroup_name, callback = on_cursor_hold })
-- vim.api.nvim_create_autocmd("LspAttach", {
-- 	callback = function ()
-- 	    vim.diagnostic.open_float(nil, {focus=false})
-- 	end
-- })
