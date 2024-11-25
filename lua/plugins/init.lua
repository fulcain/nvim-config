return {
	-- Vim prac game
	"ThePrimeagen/vim-be-good",

	-- A plugin that tracks the changes to the file since the start of editing
	"mbbill/undotree",

	-- Web dev env
	"alvan/vim-closetag",

	"mattn/emmet-vim",

	-- Template literal syntax highlight
	"jonsmithers/vim-html-template-literals",

	-- js and ts for vim
	"leafgarland/typescript-vim",
	"pangloss/vim-javascript",

	-- Highlight matching tags
	"gregsexton/MatchTag",

	-- better quick fix
	{
		"kevinhwang91/nvim-bqf",
		ft = "qf",
	},

	{
		"stevearc/dressing.nvim",
		event = "VeryLazy",
	},

	"mboughaba/i3config.vim",

	"nanotee/luv-vimdocs",
	"milisims/nvim-luaref", -- Add helps

	-- ============ Disabled plugins
	{
		"f-person/git-blame.nvim",
		enabled = false,
	},
}
