return {
    'dense-analysis/ale', 
    config = function()
        vim.g.ale_fixers = {
            ['*'] = {},
            javascript = {'prettier'},
            javascriptreact = {'prettier'},
            typescript = {'prettier'},
            typescriptreact = {'prettier'},
            css = {'prettier'},
            scss = {'prettier'},
            html = {'prettier'},
            json = {'prettier'},
        }

        vim.g.ale_linters = {
            javascript = {},
            javascriptreact = {},
            typescript = {},
            typescriptreact = {},
            css = {},
            scss = {},
            html = {},
            json = {},
        }               
    end
}
