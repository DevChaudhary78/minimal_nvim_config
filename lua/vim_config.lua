-- Setting <Space> to leader key
vim.g.mapleader = " "
-- Relative numbering with numbers on current line
vim.opt.relativenumber = true
vim.opt.number = true

-- Set indent options
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.tabstop = 2
vim.o.expandtab = true

-- Set autoindent and smartindent
vim.o.autoindent = true
vim.o.smartindent = true

-- Control formatting
vim.o.cinoptions = "gO"

-- Put cursor to middle
vim.o.scrolloff = 8;

vim.opt.hidden = true

vim.api.nvim_command([[
    augroup ChangeBackgroudColour
        " autocmd colorscheme * :hi normal guibg=#0a0a0a
        autocmd colorscheme habamax
    augroup END
]])
vim.o.termguicolors = true
vim.cmd [[silent! colorscheme habamax]]
