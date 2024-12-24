return {
	"lukas-reineke/indent-blankline.nvim",
	event = { "BufReadPre", "BufNewFile" },
	branch = "master",
	---@module "ibl"
	---@type ibl.config
	opts = {
		indent = { char = "┊" },
	},
	config = function()
		require("ibl").setup()
	end,
}
