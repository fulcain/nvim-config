vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.autoread = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true 

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "85"

vim.g.mapleader = " "

vim.opt.clipboard = "unnamed"

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

-- Disable nerd tree by default
vim.g.NERDTreeHijackNetrw = 0

-- Persian language support
vim.opt.termbidi = true

vim.opt.spelllang = 'en_us'
vim.opt.spell = true

-- Syntax highlight for html template literals
vim.g.htl_all_templates = true

-- Change cursor in all modes to block
vim.opt.guicursor = "n-v-c-i:block"

vim.api.nvim_command('autocmd BufRead,BufNewFile *.ejs setf javascript.jsx')
