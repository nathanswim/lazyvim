-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.softtabstop = 4

vim.o.wrap = true -- turn on line wrapping
vim.o.linebreak = true -- wrap at word boundaries
vim.o.breakindent = true -- indent wrapped lines
vim.o.showbreak = "↪ " -- show this symbol at the start of the wrapped line

vim.opt.clipboard:append("unnamedplus") -- copy to system clipboard

vim.o.title = true
-- vim.o.titlestring = "%F - nvim" -- show file name followed by nvim
vim.o.titlestring = vim.fn.expand("%:p:h:t") .. " (" .. vim.fn.fnamemodify(vim.fn.expand("%:p:h:h"), ":~") .. ") - nvim"

-- ruler markers
vim.o.colorcolumn = "88"

-- Dedicated Python venv with pynvim installed (avoids polluting system Python)
vim.g.python3_host_prog = vim.fn.expand("~/.local/share/nvim/python3/bin/python")

-- Disable unused legacy providers to suppress checkhealth noise
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
