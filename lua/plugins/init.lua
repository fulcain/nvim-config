return {
    -- Vim prac game
    { 'ThePrimeagen/vim-be-good' },

    -- A plugin that tracks the changes to the file since the start of editing
    -- (<leader>u)
    { 'mbbill/undotree' },

    -- Track git status (<leader>gs)
    { 'tpope/vim-fugitive' },

    -- Change around things (ex: cs"' => change " to ' 
    { 'tpope/vim-surround' },

    -- Prettier related
    { 'prettier/vim-prettier',  build  = 'yarn install --frozen-lockfile --production' },

    -- Web dev env
    { 'alvan/vim-closetag' }, 

    { 'mattn/emmet-vim' },
    -- { 'jiangmiao/auto-pairs' },

    -- Template literal syntax highlight
    { 'jonsmithers/vim-html-template-literals' },

    -- js and ts for vim
    { 'leafgarland/typescript-vim' },
    { 'pangloss/vim-javascript' },
    
    -- Highlight matching tags
    { 'gregsexton/MatchTag' },

    -- Snippets plugins
    { 'axelvc/template-string.nvim' },
    { 'garbas/vim-snipmate' },
    { 'MarcWeber/vim-addon-mw-utils' },
    { 'tomtom/tlib_vim' },
    { 'honza/vim-snippets' },

    -- Comment plug
    { 'tpope/vim-commentary' },

    -- View project files (new project only :>)
    { 'preservim/nerdtree' },

    -- better quick fix
    {'kevinhwang91/nvim-bqf', ft = 'qf'},

    -- Git blame
    { 'f-person/git-blame.nvim' }, 

    { "dstein64/vim-startuptime" },

    { 'neoclide/coc.nvim', branch = 'release' },

}

