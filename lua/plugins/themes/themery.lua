return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			themes = {
				"onedark",
				"rose-pine-main",
				"rose-pine-moon",
				"tokyonight",
				"catppuccin-mocha",
				"catppuccin-latte",
			},
		})
	end,

	vim.keymap.set("n", "<leader>ct", ":Themery <CR>"),
}
