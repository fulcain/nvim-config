return {
	"williamboman/mason.nvim",
	config = function ()
		require("mason").setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗"
				}
			}
		})
		-- Install mason plugins
		local masonInstall = "<cmd>MasonInstall stylua lua-language-server prettier tailwindcss-language-server typescript-language-server<cr>"

		vim.keymap.set("n", "<leader>imp", masonInstall)
	end
}
