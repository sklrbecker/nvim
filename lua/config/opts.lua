vim.g.mapleader = " "
vim.o.number = true
vim.o.relativenumber = false
vim.o.laststatus = 2
vim.o.list = true
vim.o.listchars = table.concat({ "extends:…", "nbsp:␣", "precedes:…", "tab:▏ ", "multispace:▏ " }, ",")
vim.o.wrap = false
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.expandtab = true
vim.o.scrolloff = 10
vim.o.clipboard = "unnamed,unnamedplus"
vim.o.updatetime = 1000
vim.opt.iskeyword:append("-")
vim.o.spelllang = "en"
vim.o.spelloptions = "camel"
vim.opt.termguicolors = true
-- don't save blank buffers to sessions (like neo-tree, trouble etc.)
vim.opt.sessionoptions:remove("blank")
