local opt = vim.opt

-- Numbe related
opt.nu = true
opt.relativenumber = true

opt.autoread = true

-- Tab related
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = false

opt.conceallevel = 1

opt.smartindent = true
opt.breakindent = true
opt.autoindent = true

opt.cursorline = true

opt.wrap = true

opt.ignorecase = true
opt.smartcase = true

opt.backspace = "indent,eol,start"

opt.swapfile = false
opt.backup = false
opt.undofile = true

opt.hlsearch = true
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.updatetime = 50

vim.g.mapleader = " "

opt.clipboard = "unnamedplus"

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

-- Persian language support
opt.termbidi = true
--
-- Syntax highlight for html template literals
vim.g.htl_all_templates = true

-- Change cursor in all modes to block
-- opt.guicursor = "n-v-c-i:block"

-- Set EJS as html
vim.api.nvim_command('autocmd BufRead,BufNewFile *.ejs setf html')

-- Enable Syntax highlight for .conf / .ini
vim.api.nvim_command('autocmd BufRead,BufNewFile logging.conf setf dosini')

-- highlight while yanking
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking text",
	group = vim.api.nvim_create_augroup("custom-hightlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end
})
