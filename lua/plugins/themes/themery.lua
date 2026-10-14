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
		vim.keymap.set("n", "<leader>ct", "<cmd>Themery<CR>", { desc = "Choose a colorscheme" })
	end,
}
