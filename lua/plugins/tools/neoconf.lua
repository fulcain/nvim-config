return {
	"folke/neoconf.nvim",
	cmd = "Neoconf",
	lazyload = true,
	config = function()
		require("neoconf").setup({})
	end,
}
