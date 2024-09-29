return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"folke/todo-comments.nvim",
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

		local keymap = vim.keymap.set

		-- keymaps
		keymap("n", "<leader>pf", builtin.find_files, { desc = "show files" })
		keymap("n", "<leader>ps", builtin.live_grep, { desc = "search the code base" })

		keymap("n", "<leader>pr", builtin.oldfiles, { desc = "Opens recently opened files in telescope" })

		keymap("n", "<leader>pt", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })

		-- keymap("n", "<C-p>", "builtin.git_files", {})

		keymap("n", "<leader>pws", function()
			local word = vim.fn.expand("<cword>")

			builtin.grep_string({ search = word })
		end, { desc = "Show the word (w) refrence of the current word" })

		keymap("n", "<leader>pWs", function()
			local word = vim.fn.expand("<cWORD>")

			builtin.grep_string({ search = word })
		end, { desc = "Show the word (W) refrence of the current word" })

		keymap("n", "<leader>vh", builtin.help_tags, { desc = "show help in telescope" })
	end,
}
