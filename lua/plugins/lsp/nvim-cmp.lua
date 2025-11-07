return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		-- sources
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-nvim-lsp",
		"saadparwaiz1/cmp_luasnip",

		-- snippet engine
		{
			"L3MON4D3/LuaSnip",
			version = "v2.*",
			build = "make install_jsregexp",
		},

		-- optional pre‑baked snippets
		"rafamadriz/friendly-snippets",
	},
	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")

		require("luasnip.loaders.from_vscode").lazy_load() -- load friendly-snippets

		-- disable cmp in text buffers or oil explorer
		cmp.setup.filetype("txt", { enabled = false })

		cmp.setup({
			enabled = function()
				local buf = vim.api.nvim_get_current_buf()
				local name = vim.api.nvim_buf_get_name(buf)
				local ft = vim.api.nvim_buf_get_option(buf, "filetype")
				return not (name == "" or ft == "oil")
			end,
			completion = { completeopt = "menu,menuone,noselect" },
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<C-k>"] = cmp.mapping.select_prev_item(),
				["<C-j>"] = cmp.mapping.select_next_item(),
				["<C-e>"] = cmp.mapping.abort(),
				["<C-a>"] = cmp.mapping.confirm({ select = false }),
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "buffer" },
				{ name = "path" },
				-- extras if you have 'codeium.nvim' or tailwind‑cmp installed
				{ name = "codeium" },
				{ name = "tailwindcss" },
			}),
		})
	end,
}
