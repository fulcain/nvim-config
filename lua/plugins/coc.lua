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
	end,
}
