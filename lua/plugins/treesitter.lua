return {
	"nvim-treesitter/nvim-treesitter",
	build = function()
		require("nvim-treesitter.install").update({ with_sync = true })()
	end,
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = {
				"c",
				"cpp",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"javascript",
				"html",
				"xml",
				"php",
				"vue",
				"css",
				"python",
			},
			sync_install = false,
			autotag = {
				enable = true,
				filetypes = {
					"html",
					"javascript",
					"typescript",
					"javascriptreact",
					"typescriptreact",
					"svelte",
					"vue",
					"tsx",
					"jsx",
					"rescript",
					"css",
					"lua",
					"xml",
					"php",
					"markdown",
				},
			},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
