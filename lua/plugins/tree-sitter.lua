return {
	'nvim-treesitter/nvim-treesitter',
	dependencies = {
		'nvim-treesitter/nvim-treesitter-textobjects',
		'windwp/nvim-ts-autotag',
	},
	build = ":TSUpdate",
	event = {"BufReadPre", "BufNewFile"},
	config = function()
		require'nvim-treesitter.configs'.setup {
			ensure_installed = { 
				"c", 
				"lua", 
				"vim", 
				"vimdoc", 
				"query", 
				"tsx",
				"json"
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>", 
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
			autotag = {
				enable = true,
			},
			sync_install = false,
			auto_install = true,
			indent = {
				enable = true,
				disable = {},
			},       
			highlight = {
				enable = true,
				disable = {},

				additional_vim_regex_highlighting = false,
			},
		}
	end
}
