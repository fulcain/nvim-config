vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>n", vim.cmd.NERDTreeToggle)

-- Moves the selected line up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("x", "<leader>p", [["_dP]])

-- yank into clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete the selected thing without adding it to clipboard
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- For visual block mode
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", "<cmd>Prettier<cr>")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Select all file
vim.keymap.set("n" , "<C-a>", "ggVG")

vim.keymap.set("n", "<leader>sf", "<cmd>set termbidi<cr>")

-- Shameful section
vim.keymap.set('', '<up>', '<nop>')
vim.keymap.set('', '<down>', '<nop>')
vim.keymap.set('', '<left>', '<nop>')
vim.keymap.set('', '<right>', '<nop>')


-- JSDoc comment
vim.keymap.set("n", "<leader>jd", "O/** */<ESC>hi")  

-- Code spell checker
vim.keymap.set("x", "<leader>.", "<Plug>(coc-codeaction-selected)")
vim.keymap.set("n", "<leader>.", "<Plug>(coc-codeaction-selected)")

-- Fugitive
vim.keymap.set("n", "<leader>gs", vim.cmd.Git);

-- Undotree 
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
