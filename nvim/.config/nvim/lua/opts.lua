vim.g.ignorecase = true
vim.g.smartcase = true
vim.g.undodir = '~/.vim/undodir'
vim.g.hlsearch = false
vim.g.incsearch = true
vim.g.scrolloff = 8
vim.g.encoding = 'utf-8'

vim.o.guicursor = 'a:block'

vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4
vim.o.softtabstop = 4
vim.bo.softtabstop = 4
vim.o.smartindent = true
vim.bo.smartindent = true
vim.o.swapfile = false
vim.bo.swapfile = false
vim.o.undofile = true
vim.bo.undofile = true

vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.wrap = false
vim.wo.foldmethod = "marker"

vim.cmd('match ColorColumn \"\\%80v\"')
