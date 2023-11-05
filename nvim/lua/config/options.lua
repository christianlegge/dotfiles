-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.conceallevel = 0
vim.keymap.set(
	"n",
	"<C-u>",
	"<C-u>zz",
	{ noremap = true, silent = true, desc = "Half page up" }
)
vim.keymap.set(
	"n",
	"<C-d>",
	"<C-d>zz",
	{ noremap = true, silent = true, desc = "Half page down" }
)
-- vim.opt.autochdir = true
