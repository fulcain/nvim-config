return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-fzf-native.nvim",
	},
	config = function()
		local builtin = require("telescope.builtin")
		local telescope = require("telescope")

		telescope.setup({
			defaults = {
				path_display = { "smart" },
			},
		})

		-- keymaps
		vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
		vim.keymap.set("n", "<leader>ps", builtin.live_grep)

		vim.keymap.set("n", "<leader>pr", builtin.oldfiles, { desc = "Opens recently opened files in telescope" })

		vim.keymap.set("n", "<C-p>", "builtin.git_files", {})

		vim.keymap.set("n", "<leader>pws", function()
			local word = vim.fn.expand("<cword>")

			builtin.grep_string({ search = word })
		end)

		vim.keymap.set("n", "<leader>pWs", function()
			local word = vim.fn.expand("<cWORD>")

			builtin.grep_string({ search = word })
		end)

		vim.keymap.set("n", "<leader>vh", builtin.help_tags, {})
	end,
}
