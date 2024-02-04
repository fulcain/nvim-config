return {
    'sbdchd/neoformat',
    config = function()
        -- Neo format
        vim.g.neoformat_try_node_exe = 1

        vim.g.neoformat_enabled = {
            javascript = {'prettier'},
            javascriptreact = {'prettier'},
            typescript = {'prettier'},
            typescriptreact = {'prettier'},
            css = {'prettier'},
            scss = {'prettier'},
            html = {'prettier'},
            json = {'prettier'},
        }
    end
}
