return {
	"L3MON4D3/LuaSnip",
	dependencies = {
		"rafamadriz/friendly-snippets",
	},
	config = function()
		local luasnip = require("luasnip")

		-- 1. Load snippets
		require("luasnip.loaders.from_vscode").lazy_load()

		-- 2. Configure snippet expansion keymaps directly in LuaSnip
		luasnip.config.setup({
			history = true,
			enable_rename_updates = true,
			-- Define keymaps here
			keys = {
				{ "<Tab>", function() luasnip.expand() end },
				{ "<S-Tab>", function() luasnip.jump(-1) end },
			},
		})
	end,
}
