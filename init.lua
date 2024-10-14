require("sancheti")
require("sancheti.lazy")

-- Enable line numbers and set the relative line numbers
vim.api.nvim_exec([[
	set number relativenumber
]], false)

-- Expand tabs to spaces
vim.opt.expandtab = true

-- Set the number of spaces that <Tab> in the file counts for
vim.opt.tabstop = 4

-- Set the autoindent table length
vim.opt.shiftwidth = 4

-- Number of lines always visible for the top and bottom
vim.opt.scrolloff = 10

-- Will highlight the nth column in all .h and .c files
vim.api.nvim_exec([[
  autocmd FileType c,h setlocal colorcolumn=80
]], false)

-- Enable displaying of trailing whitespaces
vim.cmd[[set list]]
vim.cmd[[set listchars=trail:·]]

-- Highlight trailing whitespaces
vim.cmd[[highlight TrailingWhitespace guibg=#ff0000 ctermbg=red]]
vim.cmd[[match TrailingWhitespace /\s\+$/]]

-- Move around the file while in insert mode
vim.api.nvim_set_keymap('i', '<A-h>', '<Left>', {noremap = true})
vim.api.nvim_set_keymap('i', '<A-j>', '<Down>', {noremap = true})
vim.api.nvim_set_keymap('i', '<A-k>', '<Up>', {noremap = true})
vim.api.nvim_set_keymap('i', '<A-l>', '<Right>', {noremap = true})
