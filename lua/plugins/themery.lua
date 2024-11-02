return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			themes = {
				"onedark",
				"rose-pine",
				"tokyonight",
			},
		})
	end,

	vim.keymap.set("n", "<leader>ct", ":Themery <CR>"),
}
