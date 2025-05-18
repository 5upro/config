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
				capabilities = capabilities,
				cmd = {
					"clangd",
					"--background-index",
					"--clang-tidy",
					"--header-insertion=iwyu",
					"--completion-style=detailed",
					"--query-driver=C:/msys64/mingw64/bin/*",
				}

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

			vim.diagnostic.config({
				virtual_text = true,
				signs = true,
				underline = true,
				update_in_insert = false,
				severity_sort = true,
			})

			--Key Mappings 
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {}) --shift+k to show docm of the keyword under which is under the cursor 
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {}) --gd to show doc of the keyword under which is under the cursor 
			vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {}) --space+ca to show doc of the keyword under which is under the cursor 
		end
	}
}
