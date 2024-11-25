return {
	"gbprod/substitute.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local substitute = require("substitute")

		substitute.setup()

		-- set keymaps
		local keymap = vim.keymap.set

		keymap("n", "s", substitute.operator, { desc = "Substitute with motion" })
		keymap("n", "ss", substitute.line, { desc = "Substitute line" })
		keymap("n", "S", substitute.eol, { desc = "Substitute to end of line" })
		keymap("x", "s", substitute.visual, { desc = "Substitute in visual mode" })
	end,
}
