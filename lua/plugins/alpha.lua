return{
    'goolord/alpha-nvim',
    dependencies = {
        'echasnovski/mini.icons',
        'nvim-lua/plenary.nvim'
    },
    config = function ()
        local alpha = require("alpha")
		local dashboard = require("alpha.themes.theta")
		dashboard.header.val = {
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                     ]],
			[[       ████ ██████           █████      ██                     ]],
			[[      ███████████             █████                             ]],
			[[      █████████ ███████████████████ ███   ███████████   ]],
			[[     █████████  ███    █████████████ █████ ██████████████   ]],
			[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
			[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
			[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
			[[                                                                       ]],
			[[                                                                       ]],
			[[                                                                       ]],
		}
		-- dashboard.buttons.val = ({
		-- 		dashboard.button("e", "  New file", "<cmd>ene<CR>"),
		-- 		dashboard.button("CTRL f", "󰈞  Find file"),
		-- 		dashboard.button("SPC fg", "󰊄  Live grep"),
		-- 		dashboard.button("c", "  Configuration", "<cmd>cd stdpath('config')<CR>"),
		-- 		dashboard.button("u", "  Update plugins", "<cmd>Lazy sync<CR>"),
		-- 		dashboard.button("q", "󰅚  Quit", "<cmd>qa<CR>"),
		-- })
		alpha.setup(dashboard.config)
    end
}
