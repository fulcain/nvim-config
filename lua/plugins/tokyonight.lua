return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	enabled = false,
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
				-- Style to be applied to different syntax groups
				-- Value is any valid attr-list value for `:help nvim_set_hl`
				comments = { italic = false },
				keywords = { italic = false },
				functions = { italic = false },
				variables = { italic = false },
				-- Background styles. Can be "dark", "transparent" or "normal"
				sidebars = "dark", -- style for sidebars, see below
				floats = "dark", -- style for floating windows
			},
			sidebars = { "qf", "help" },
			on_highlights = function() end,
		})

		-- Theme
		vim.cmd("colorscheme tokyonight")
	end,
}
