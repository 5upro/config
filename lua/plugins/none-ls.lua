return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				--Lua
				null_ls.builtins.formatting.stylua,
				--JavaScript
				null_ls.builtins.formatting.prettier,
				require("none-ls.diagnostics.eslint_d"),
				require("none-ls.code_actions.eslint_d"),
				--Python
				null_ls.builtins.formatting.black,
				--C-lang/C++
				null_ls.builtins.formatting.clang_format,
			},
		})
		--Key Mappings
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
