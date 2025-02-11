return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {},
	config = function()
		local bg = "#1a1b26"

		require("tokyonight").setup({
			style = "night",
			---@class Colors
			on_colors = function(colors)
				colors.bg = bg
			end,
			styles = {
				comments = { italic = false, bold = true },
				keywords = { italic = false, bold = true },
				functions = { italic = false, bold = true },
				variables = { italic = false, bold = true },
				sidebars = "dark",
				floats = "dark",
			},
			sidebars = { "qf", "help" },
			on_highlights = function() end,
		})
	end,
}
