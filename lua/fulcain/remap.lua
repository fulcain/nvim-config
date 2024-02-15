local keymap = vim.keymap.set

vim.g.mapleader = " "
keymap("n", "<leader>pv", vim.cmd.Ex)
keymap("n", "<leader>n", vim.cmd.NERDTreeToggle)

-- Moves the selected line up and down
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

keymap("n", "J", "mzJ`z")
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")
keymap("x", "<leader>p", [["_dP]])

-- yank into clipboard
keymap({"n", "v"}, "<leader>y", [["+y]])
keymap("n", "<leader>Y", [["+Y]])

-- Delete the selected thing without adding it to clipboard
keymap({"n", "v"}, "<leader>d", [["_d]])

-- For visual block mode
keymap("i", "<C-c>", "<Esc>")

keymap("n", "Q", "<nop>")
keymap("n", "<leader>f", "<cmd>Prettier<cr>")

keymap("n", "<C-k>", "<cmd>cnext<CR>zz")
keymap("n", "<C-j>", "<cmd>cprev<CR>zz")
keymap("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap("n", "<leader>j", "<cmd>lprev<CR>zz")

keymap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
keymap("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Select all file
keymap("n" , "<C-a>", "ggVG")

keymap("n", "<leader>sf", "<cmd>set termbidi<cr>")

-- Shameful section
keymap('', '<up>', '<nop>')
keymap('', '<down>', '<nop>')
keymap('', '<left>', '<nop>')
keymap('', '<right>', '<nop>')

-- JSDoc comment
keymap("n", "<leader>jd", "O/** */<ESC>hi")  

-- Code spell checker 
keymap("x", "<leader>.", "<Plug>(coc-codeaction-selected)")
keymap("n", "<leader>.", "<Plug>(coc-codeaction-selected)")

-- Fugitive
keymap("n", "<leader>gs", vim.cmd.Git);

-- Undotree 
keymap('n', '<leader>u', vim.cmd.UndotreeToggle)
keymap("n", "<leader>gc", function()
  require("treesitter-context").go_to_context(vim.v.count1)
end, { silent = true })
