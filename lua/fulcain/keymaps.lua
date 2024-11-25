local keymap = vim.keymap.set

vim.g.mapleader = " "

-- keymap("n", "<leader>pv", vim.cmd.Ex)
keymap("n", "<leader>pv", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- run test in the current file
keymap("n", "<leader>t", "<Plug>PlenaryTestFile", { desc = "runs tests" })

-- Moves the selected line up and down
keymap("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected line down" })
keymap("v", "K", ":m '<-2<CR>gv=gv", { desc = "MOve selected line up" })

keymap("n", "J", "mzJ`z", { desc = "Move the below line up" })

-- Move up and down half a page
keymap("n", "<C-d>", "<C-d>zz", { desc = "Move file half down and center view" })
keymap("n", "<C-u>", "<C-u>zz", { desc = "Move file half up and center view" })

-- Center the page on next search result
keymap("n", "n", "nzzzv", { desc = "Center the page on next search" })
keymap("n", "N", "Nzzzv", { desc = "Center the page on prev search" })

keymap("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "de-select the highlighted search" })

-- yank into clipboard
keymap({ "n", "v" }, "<leader>y", [["+y]], { desc = "Copy into clipboard" })
keymap("n", "<leader>Y", [["+Y]], { desc = "Copy into clipboard" })

-- Delete the selected thing without adding it to clipboard
keymap({ "n", "v" }, "<leader>d", [["_d]], { desc = "delete selected thing without adding to clipboard" })

-- For visual block mode
keymap("i", "<C-c>", "<Esc>", { desc = "Set <C-c> as Esc" })

keymap("n", "Q", "<nop>", { desc = "disable the Q key" })

-- keymap("n", "<C-k>", "<cmd>cnext<CR>zz")
-- keymap("n", "<C-j>", "<cmd>cprev<CR>zz")
-- keymap("n", "<leader>k", "<cmd>lnext<CR>zz")
-- keymap("n", "<leader>j", "<cmd>lprev<CR>zz")

-- change the current word
keymap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "replace the current word" })

-- Save and source file
keymap("n", "<leader><leader>s", function()
	vim.cmd("w")
	vim.cmd("source %")
end, { desc = "Save and source" })

-- Saves a file
keymap("n", "<leader><leader>", function()
	vim.cmd("w")
end, { desc = "Save the file" })

-- Select whole file
keymap("n", "<C-a>", "ggVG", { desc = "Select whole file" })

keymap("", "<up>", "<nop>", { desc = "disable arrow up" })
keymap("", "<down>", "<nop>", { desc = "disable arrow down" })
keymap("", "<left>", "<nop>", { desc = "disable arrow left" })
keymap("", "<right>", "<nop>", { desc = "disable arrow right" })

-- Code spell checker
keymap("x", "<leader>.", "<Plug>(coc-codeaction-selected)", { desc = "show code action for spell chekcer" })
keymap("n", "<leader>.", "<Plug>(coc-codeaction-selected)", { desc = "show code action for spell chekcer" })

-- Undotree
keymap("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Show undo tree" })

-- Shift or tab the selected thing
keymap("v", "<TAB>", ">gv", { desc = "Tab the selected thing" })
keymap("v", "<S-TAB>", "<gv", { desc = "SHift tab the selected thing" })

-- Navigate vim panes better
keymap("n", "<c-k>", ":wincmd k<CR>", { desc = "remap default vim pane navigation" })
keymap("n", "<c-j>", ":wincmd j<CR>", { desc = "remap default vim pane navigation" })
keymap("n", "<c-h>", ":wincmd h<CR>", { desc = "remap default vim pane navigation" })
keymap("n", "<c-l>", ":wincmd l<CR>", { desc = "remap default vim pane navigation" })

-- Inc and dec numbers
keymap("n", "<leader>+", "<C-a>", { desc = "Increament number" })
keymap("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

keymap("i", "jk", "<Esc>", { desc = "Changed mode to normal mode" })

-- Save session on vim close
keymap("n", "ZZ", function()
	vim.cmd("SessionSave")
	vim.cmd("wq")
end)
