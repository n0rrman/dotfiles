return {
	"nvim-treesitter/nvim-treesitter",
	enabled = true,
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = {
				"angular",
				"c",
				"lua",
				"rust",
				"go",
				"vim",
				"vimdoc",
				"query",
				"python",
				"typescript",
				"javascript",
				"html",
			},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
			fold = { enable = true },
		})
	end,
}
