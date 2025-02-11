return {
	"hrsh7th/nvim-cmp",
	enabled = true,
    event = "VeryLazy",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp", -- LSP completions
		"hrsh7th/cmp-buffer", -- Buffer completions
		"hrsh7th/cmp-path", -- Path completions
		"hrsh7th/cmp-cmdline", -- Command line completions
		"saadparwaiz1/cmp_luasnip", -- LuaSnip completions
		"L3MON4D3/LuaSnip", -- Snippet engine
		"rafamadriz/friendly-snippets", -- A collection of snippets for LuaSnip
	},
	config = function()
		local cmp = require("cmp")
		cmp.setup({
			sources = {
				{ name = "nvim_lsp" },
			},
			mapping = cmp.mapping.preset.insert({
				["<CR>"] = cmp.mapping.confirm({ select = false }),
				["<Tab>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
			}),
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
		})
	end,
}
