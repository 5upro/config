vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set autoindent")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set mouse=a")
vim.cmd("set smarttab")

require("config.lazy")

--Basic Keymappings
--vim.keymap.set('n', '<C-s>', ':w<CR>', {}) --saving a file using ctrl+s
