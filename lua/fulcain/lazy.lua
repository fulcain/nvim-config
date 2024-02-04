local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)


require('lazy').setup({
    -- ThePrimeagen plugins

    -- Vim prac game
    { 'ThePrimeagen/vim-be-good' },

    -- Vim apm
    { 'ThePrimeagen/vim-apm' },

    -- Harpoon (file binder) (<C-e>)
    {  
        'theprimeagen/harpoon' ,
        branch = "harpoon2",
        dependencies = {
            'nvim-telescope/telescope.nvim',
            'nvim-lua/plenary.nvim'
        }
    },

    -- telescope (Fuzzy finder)
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons',
        }
    },

    -- Themes
    'navarasu/onedark.nvim',

    { "ellisonleao/gruvbox.nvim" },
    -- Treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        build = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,

        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects'}
        },

        -- A plugin that tracks the changes to the file since the start of editing
        -- (<leader>u)
        { 'mbbill/undotree' },

        -- Track git status (<leader>gs)
        { 'tpope/vim-fugitive' },

        -- Change around things (ex: cs"' => change " to ' 
        { 'tpope/vim-surround' },

        -- Lsp (suggestion, auto compelete and...)
        {
            'VonHeikemen/lsp-zero.nvim',
            branch = 'v3.x',
            dependencies = {
                -- LSP Support
                {'neovim/nvim-lspconfig'},

                {'hrsh7th/nvim-cmp'},
                {'hrsh7th/cmp-nvim-lsp'},
                {'hrsh7th/cmp-path'},
                {'hrsh7th/cmp-nvim-lua'},
                {'hrsh7th/cmp-buffer'},
                {'saadparwaiz1/cmp_luasnip'},
                {'L3MON4D3/LuaSnip'},
                {'rafamadriz/friendly-snippets'},
                {'williamboman/mason.nvim'},
                {'williamboman/mason-lspconfig.nvim'},
            }
        },

        -- Prettier related
        { 'prettier/vim-prettier',  build  = 'yarn install --frozen-lockfile --production' },
        { 'sbdchd/neoformat' },
        { 'dense-analysis/ale' },

        -- Web dev env
        { 'alvan/vim-closetag' }, 
        { 'mattn/emmet-vim' },
        { 'AndrewRadev/tagalong.vim' },
        -- { 'jiangmiao/auto-pairs' },
        {
            'lukas-reineke/indent-blankline.nvim',
            config = function()
                opts = {}
                -- Other blankline configuration here
                require('ibl').setup(require('indent-rainbowline').make_opts(opts, {
                    -- How transparent should the rainbow colors be. 1 is completely opaque, 0 is invisible. 0.07 by default
                    color_transparency = 0.15,
                    -- The 24-bit colors to mix with the background. Specified in hex.
                    -- { 0xffff40, 0x79ff79, 0xff79ff, 0x4fecec, } by default
                    colors = { 0xff0000, 0x00ff00, 0x0000ff, },
                }))
            end,
            dependencies = {
                'TheGLander/indent-rainbowline.nvim',
            },
        },   
        { 'brenoprata10/nvim-highlight-colors' },
        -- Template literal syntax highlight
        { 'jonsmithers/vim-html-template-literals' },

        -- js and ts for vim
        { 'leafgarland/typescript-vim' },
        { 'pangloss/vim-javascript' },
        -- Highlight matching tags
        { 'gregsexton/MatchTag' },
        -- Add a syntax highlight for template literal
        { 'axelvc/template-string.nvim' },
        -- Snippets plugins
        { 'garbas/vim-snipmate' },
        { 'MarcWeber/vim-addon-mw-utils' },
        { 'tomtom/tlib_vim' },
        { 'honza/vim-snippets' },

        -- Comment plug
        { 'tpope/vim-commentary' },

        -- Makes .env file values not readable
        { 'laytan/cloak.nvim' },

        -- View project files (new project only :>)
        { 'preservim/nerdtree' },

        -- better quick fix
        {'kevinhwang91/nvim-bqf', ft = 'qf'},

        -- Git blame
        { 'f-person/git-blame.nvim' }, 

        -- Trouble finder 
        { 'folke/trouble.nvim' },

        { 'Djancyp/better-comments.nvim' },

        {
            'filipdutescu/renamer.nvim',
            branch = 'master',
            dependencies = { {'nvim-lua/plenary.nvim'} }
        },

        { "dstein64/vim-startuptime" },

        { 'neoclide/coc.nvim', branch = 'release' },
    })


