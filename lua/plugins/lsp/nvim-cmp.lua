return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		{
			"L3MON4D3/LuaSnip",
			version = "v2.*",
			build = "make install_jsregexp",
		},
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",
	},
	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")

		require("cmp").setup.filetype("txt", {
			enabled = false,
		})

		cmp.setup({
			enabled = function()
				local bufnr = vim.api.nvim_get_current_buf()
				local bufname = vim.api.nvim_buf_get_name(bufnr)
				local filetype = vim.api.nvim_buf_get_option(bufnr, "filetype")

				-- Disable for unnamed buffers or 'oil' filetype
				if bufname == "" or filetype == "oil" then
					return false
				end
				return true
			end,
			-- Other cmp configuration here
			completion = {
				completeopt = "menu,menuone,noselect",
			},
			snippet = { -- configure how nvim-cmp interacts with snippet engine
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
				["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
				["<C-e>"] = cmp.mapping.abort(), -- close completion window
				["<C-a>"] = cmp.mapping.confirm({ select = false }),
			}),
			-- sources for autocompletion
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" }, -- snippets
				{ name = "buffer" }, -- text within current buffer
				{ name = "path" }, -- file system paths
				{ name = "codeium" }, -- file system paths
			}),
		})
	end,
}
