return {
	'preservim/nerdtree',
	dependencies = {
		'Xuyuanp/nerdtree-git-plugin',
		'tiagofumo/vim-nerdtree-syntax-highlight',
		'ryanoasis/vim-devicons',
		'PhilRunninger/nerdtree-buffer-ops',
		'PhilRunninger/nerdtree-visual-selection',
	},
	config = function()
		vim.keymap.set("n", "<leader>n", vim.cmd.NERDTreeToggle)
	end
}
