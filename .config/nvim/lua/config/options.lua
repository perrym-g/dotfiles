vim.opt.showmode = false --disables default showmode

--hybrid line numbers
vim.opt.nu = true
vim.opt.relativenumber = true 

--indenting styles
vim.opt.expandtab = true --converts tabs to spaces

--these gotta be same value
vim.opt.shiftwidth = 4 --indent with << and >
vim.opt.tabstop = 4
vim.opt.softtabstop =4

vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
--unsure 
vim.opt.breakindent = true

--unsure about this one
vim.opt.cursorline = true

--store undos
vim.opt.undofile = true

--easy resize splits
vim.opt.mouse = "a" 

--case insensitive search unless using capitals
vim.opt.ignorecase = true
vim.opt.smartcase = true

--stops code moving around from lsps
vim.opt.signcolumn = "yes"

--split behaviour
vim.opt.splitright = true
vim.opt.splitbelow = true

--min screen lines
vim.opt.scrolloff = 10

--syncs os and nvim clipboards
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)
