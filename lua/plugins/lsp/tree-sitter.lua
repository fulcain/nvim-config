local is_windows = vim.fn.has("win32") == 1
local parser_list = {
	"c",
	"lua",
	"vim",
	"vimdoc",
	"query",
	"tsx",
	"javascript",
	"typescript",
	"html",
	"css",
	"markdown",
	"markdown_inline",
	"bash",
	"dockerfile",
	"gitignore",
	"json",
	"python",
	"regex",
}

return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
		"windwp/nvim-ts-autotag",
	},
	build = ":TSUpdate",
	lazy = not is_windows,
	event = not is_windows and { "BufReadPre", "BufNewFile" } or nil,
	config = function()
		require("nvim-ts-autotag").setup()

		if is_windows then
			local treesitter = require("nvim-treesitter")
			treesitter.setup({})

			vim.api.nvim_create_autocmd("FileType", {
				pattern = parser_list,
				callback = function(event)
					pcall(vim.treesitter.start, event.buf)
				end,
			})

			local has_compiler = vim.fn.executable("cl") == 1
				or vim.fn.executable("clang") == 1
				or vim.fn.executable("gcc") == 1
				or vim.fn.executable("zig") == 1

			if vim.fn.executable("tree-sitter") == 1 and has_compiler then
				if vim.fn.executable("gcc") == 1 then
					vim.env.CC = "gcc"
				end
				treesitter.install(parser_list)
			else
				vim.notify(
					"Tree-sitter parsers need tree-sitter-cli and a C compiler on PATH. Install them, then restart Neovim.",
					vim.log.levels.WARN
				)
			end
		else
			require("nvim-treesitter.configs").setup({
				ignore_install = {},
				modules = {},
				ensure_installed = parser_list,
				sync_install = true,
				auto_install = true,
				indent = { enable = true },
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},
			})
		end
	end,
}
