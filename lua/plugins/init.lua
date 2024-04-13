return {
    -- Vim prac game
    'ThePrimeagen/vim-be-good',

    -- A plugin that tracks the changes to the file since the start of editing
    'mbbill/undotree',

    -- Track git status (<leader>gs)
    'tpope/vim-fugitive',

    -- Change around things (ex: cs"' => change " to ' 
    'tpope/vim-surround',

    -- Prettier related
    {
        'prettier/vim-prettier',  
        build  = 'yarn install --frozen-lockfile --production',
    },        

    -- Web dev env
    'alvan/vim-closetag',

    'mattn/emmet-vim',

    -- Template literal syntax highlight
    'jonsmithers/vim-html-template-literals',

    -- js and ts for vim
    'leafgarland/typescript-vim',
    'pangloss/vim-javascript',

    -- Highlight matching tags
    'gregsexton/MatchTag',

    -- AUto change string to template after writing ${}
    'axelvc/template-string.nvim',

    -- Comment plug
    'tpope/vim-commentary',

    -- better quick fix
    {
        'kevinhwang91/nvim-bqf',
        ft = 'qf',
    },

    'dstein64/vim-startuptime',

    {
        'neoclide/coc.nvim',
        branch = 'release'
    },

    'windwp/nvim-ts-autotag',

    'jiangmiao/auto-pairs',

	'mboughaba/i3config.vim',
    -- ============ Disabled plugins
    -- 'f-person/git-blame.nvim'  
}
