return {
    'filipdutescu/renamer.nvim',
    branch = 'master',
    dependencies =  {
        'nvim-lua/plenary.nvim'
    }, 
    config = function()
        require("renamer").setup({})
        vim.api.nvim_set_keymap('i', '<F2>', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<F2>', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('v', '<F2>', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })
    end
}
