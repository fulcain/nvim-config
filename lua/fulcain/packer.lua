-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- ThePrimeagen plugins

    -- Vim prac game
    use('ThePrimeagen/vim-be-good')

    -- Vim apm
    use('ThePrimeagen/vim-apm')

    -- Harpoon (file binder) (<C-e>)
    use({ 
        'theprimeagen/harpoon' ,
        branch = "harpoon2",
        requires = {
            'nvim-telescope/telescope.nvim',
            'nvim-lua/plenary.nvim'
        }
    })

    -- telescope (Fuzzy finder)
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        requires = { 
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons',
        }
    }

    -- Themes
    use 'navarasu/onedark.nvim'

    use { "ellisonleao/gruvbox.nvim" }
    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    -- A plugin that tracks the changes to the file since the start of editing
    -- (<leader>u)
    use('mbbill/undotree')

    -- Track git status (<leader>gs)
    use('tpope/vim-fugitive')

    -- Change around things (ex: cs"' => change " to ' 
    use('tpope/vim-surround')

    -- Lsp (suggestion, auto compelete and...)
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
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
    }

    -- Prettier related
    use{ 'prettier/vim-prettier',  run  = 'yarn install --frozen-lockfile --production' }
    use('sbdchd/neoformat')
    use('dense-analysis/ale')

    -- Web dev env
    use('alvan/vim-closetag') 
    use('mattn/emmet-vim')
    use('AndrewRadev/tagalong.vim')
    -- use('jiangmiao/auto-pairs')
    use {
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
        requires = {
            'TheGLander/indent-rainbowline.nvim',
        },
    }   
    use('brenoprata10/nvim-highlight-colors')
    -- Template literal syntax highlight
    use('jonsmithers/vim-html-template-literals')

    -- js and ts for vim
    use('leafgarland/typescript-vim')
    use('pangloss/vim-javascript')
    -- Highlight matching tags
    use('gregsexton/MatchTag')
    -- Add a syntax highlight for template literal
    use('axelvc/template-string.nvim')
    -- Snippets plugins
    use('garbas/vim-snipmate')
    use('MarcWeber/vim-addon-mw-utils')
    use('tomtom/tlib_vim')
    use('honza/vim-snippets')

    -- Comment plug
    use('tpope/vim-commentary')

    -- Makes .env file values not readable
    use('laytan/cloak.nvim')

    -- View project files (new project only :>)
    use('preservim/nerdtree')

    -- better quick fix
    use {'kevinhwang91/nvim-bqf', ft = 'qf'}

    -- Git blame
    use('f-person/git-blame.nvim') 

    -- Trouble finder 
    use('folke/trouble.nvim')

    use('Djancyp/better-comments.nvim')

    use {
        'filipdutescu/renamer.nvim',
        branch = 'master',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use("dstein64/vim-startuptime")

    use { 'neoclide/coc.nvim', branch='release' }
end)


