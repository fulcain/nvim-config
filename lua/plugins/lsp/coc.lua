return {
	"neoclide/coc.nvim",
	branch = "release",
	config = function()
		local opts = { silent = true, noremap = true, expr = true, replace_keycodes = false }
		vim.keymap.set(
			"i",
			"<C-A>",
			'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<C-A>" : coc#refresh()',
			opts
		)

		vim.g.coc_global_extensions = { "coc-actions", "coc-spell-checker", "coc-json" }


		-- Code spell checker keybindings
		vim.keymap.set(
			"x",
			"<leader>.",
			"<Plug>(coc-codeaction-selected)",
			{ desc = "Show code action for spell checker" }
		)
		vim.keymap.set(
			"n",
			"<leader>.",
			"<Plug>(coc-codeaction-selected)",
			{ desc = "Show code action for spell checker" }
		)
	end,
}
