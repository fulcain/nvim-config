return {
	-- "fulcain/collect.nvim",
	dir = "~/lua-plugins/collect.nvim/",
	config = function()
		local collect = require("collect")
		collect.setup({
			-- title = "Custom",
			-- title_pose = "left",
			-- height = 30,
			-- width = 100
		})
	end
}
