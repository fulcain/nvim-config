return {
	"folke/neoconf.nvim",
	cmd = "Neoconf",
	lazyload = true,
	config = function()
		require("neoconf").setup({})

		vim.keymap.set("n", "<leader>nc", "<cmd>Neoconf<cr>", { desc = "Opens neoconf window" })
	end,
}
