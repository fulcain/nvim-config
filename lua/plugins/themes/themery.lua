return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		local themery = require("themery")
		local themery_config = {
			themes = {
				"onedark",
				"rose-pine-main",
				"rose-pine-moon",
				"tokyonight",
				"catppuccin-mocha",
				"catppuccin-latte",
			},
		}

		if vim.fn.has("win32") == 1 then
			-- This Themery version's default triggers a false deprecation warning on Windows.
			local original_print = print
			local warning = require("themery.constants").MSG_INFO.THEME_CONFIG_FILE_DEPRECATED
			print = function(message, ...)
				if message == warning then
					return
				end
				return original_print(message, ...)
			end
			local ok, err = pcall(themery.setup, themery_config)
			print = original_print
			if not ok then
				error(err, 0)
			end
		else
			themery.setup(themery_config)
		end

		vim.keymap.set("n", "<leader>ct", "<cmd>Themery<CR>", { desc = "Choose a colorscheme" })
	end,
}
