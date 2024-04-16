return {
	-- "fulcain/collect.nvim",
	dir = "~/lua-plugins/collect.nvim/",
	config = function()
		require("collect").setup({
			collect_name = "fulcain"
		})
	end
}
