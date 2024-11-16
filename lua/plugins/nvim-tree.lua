return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		require("nvim-tree").setup()
		vim.keymap.set("n", "<leader>n", "<cmd>:NvimTreeToggle<CR>")
	end,
}
