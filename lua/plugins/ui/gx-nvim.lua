return {
	"chrishrb/gx.nvim",
	keys = {
		{
			"gx", "<CMD>Browse<CR>",
			mode = {
				"n", "x"
			}
		}
	},
	cmd = { "Browse" },
	init = function()
		vim.g.netrw_ngox = 1 -- Disable netrw gx
	end,
	dependencies = {
		"nvim-lua/plenary.nvim"
	},
	config = true,
	submodules = true
}
