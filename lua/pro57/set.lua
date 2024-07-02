-- Line numbers
vim.wo.number = true

-- Tabstops 
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Indentation
vim.opt.smartindent = true
vim.o.breakindent = true

vim.opt.wrap = false

-- Undo
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Search highlight and incremental search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Colorscheme
vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.opt.updatetime = 50
vim.opt.signcolumn = "yes"

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'


