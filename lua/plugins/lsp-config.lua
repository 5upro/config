return{
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"clangd",
					"pylsp",
					"html",
					"cssls",
					"eslint",
					"ast_grep",
				}
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require('cmp_nvim_lsp').default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities
			})
			lspconfig.clangd.setup({
				capabilities = capabilities
			})
			lspconfig.pylsp.setup({
				capabilities = capabilities
			})
			lspconfig.html.setup({
				capabilities = capabilities
			})
			lspconfig.cssls.setup({
				capabilities = capabilities
			})
			lspconfig.eslint.setup({
				capabilities = capabilities
			})
			lspconfig.ast_grep.setup({
				capabilities = capabilities
			})
			--Key Mappings 
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {}) --shift+k to show docm of the keyword under which is under the cursor 
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {}) --gd to show doc of the keyword under which is under the cursor 
			vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {}) --space+ca to show doc of the keyword under which is under the cursor 
		end
	}
}
