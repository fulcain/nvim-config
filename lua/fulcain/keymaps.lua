local keymap = vim.keymap.set

vim.g.mapleader = " "

-- keymap("n", "<leader>pv", vim.cmd.Ex)
keymap("n", "<leader>pv", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- run test in the current file
keymap("n", "<leader>t", "<Plug>PlenaryTestFile")

-- Moves the selected line up and down
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

keymap("n", "J", "mzJ`z")

-- Move up and down half a page
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")

-- Center the page on next search result
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")

keymap("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- yank into clipboard
keymap({ "n", "v" }, "<leader>y", [["+y]])
keymap("n", "<leader>Y", [["+Y]])

-- Delete the selected thing without adding it to clipboard
keymap({ "n", "v" }, "<leader>d", [["_d]])

-- For visual block mode
keymap("i", "<C-c>", "<Esc>")

keymap("n", "Q", "<nop>")

keymap("n", "<C-k>", "<cmd>cnext<CR>zz")
keymap("n", "<C-j>", "<cmd>cprev<CR>zz")
keymap("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap("n", "<leader>j", "<cmd>lprev<CR>zz")

-- change the current word
keymap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Save and source file
keymap("n", "<leader><leader>s", function()
	vim.cmd("w")
	vim.cmd("so")
end)

-- Saves a file
keymap("n", "<leader><leader>", function()
	vim.cmd("w")
end)

-- Select whole file
keymap("n", "<C-a>", "ggVG")

keymap("n", "<leader>sf", "<cmd>set termbidi<cr>")

-- Shameful section
keymap("", "<up>", "<nop>")
keymap("", "<down>", "<nop>")
keymap("", "<left>", "<nop>")
keymap("", "<right>", "<nop>")

-- Code spell checker
keymap("x", "<leader>.", "<Plug>(coc-codeaction-selected)")
keymap("n", "<leader>.", "<Plug>(coc-codeaction-selected)")

-- Undotree
keymap("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Shift or tab the selected thing
keymap("v", "<TAB>", ">gv")
keymap("v", "<S-TAB>", "<gv")

-- Navigate vim panes better
keymap("n", "<c-k>", ":wincmd k<CR>")
keymap("n", "<c-j>", ":wincmd j<CR>")
keymap("n", "<c-h>", ":wincmd h<CR>")
keymap("n", "<c-l>", ":wincmd l<CR>")

-- Inc and dec numbers
keymap("n", "<leader>+", "<C-a>", { desc = "Increament number" })
keymap("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

keymap("i", "jk", "<Esc>", { desc = "Exit insert mode with jk" })

-- Save session on vim close
keymap("n", "ZZ", function()
	vim.cmd("SessionSave")
	vim.cmd("q")
end)
