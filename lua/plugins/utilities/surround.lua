return {
	"kylechui/nvim-surround",
	event = { "BufReadPre", "BufNewFile" },
	version = "*", -- Use for stability; omit to use `main` branch for the latest features
	--[[
		cs"' => change " to '
		ds" => delete the " around
		ysiw] => add a [] around word
		ysap (or 8j or some motion) then t, so it will be -
		ysapt => add a new tag arround selected thing

		basically t stands for html tag
	--]]
	config = true,
}
