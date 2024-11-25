return {
	"lukas-reineke/indent-blankline.nvim",
	event = { "BufReadPre", "BufNewFile" },
	main = "ibl",
	branch = "lua",
	opts = {
		indent = { char = "┊" },
	},
	config = function()
		require("ibl").setup()
	end,
}
