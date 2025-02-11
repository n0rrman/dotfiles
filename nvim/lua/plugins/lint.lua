return {
	{
		"mfussenegger/nvim-lint",
		enabled = true,
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local lint = require("lint")
			local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

			vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
				group = lint_augroup,
				callback = function()
					lint.try_lint()
				end,
			})
		end,
	},
	{
		"rshkarin/mason-nvim-lint",
		enabled = true,
        event = "VeryLazy",
		opts = {
			ensure_installed = require("config.servers").linter.ensure_installed,
			ignore_install = require("config.servers").linter.ignore_install,
		},
	},
}
