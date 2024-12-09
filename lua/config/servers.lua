return {
    -- FORMATTER --
	formatter = {
		ensure_installed = {
			"eslint_d", -- Linter for JavaScript/TypeScript
			"prettier", -- Code formatter for JS/TS/HTML/CSS
			"black", -- Python code formatter
			"flake8", -- Python linter
			"stylua", -- Lua formatter
			"rustfmt", -- Rust formatter
			"gofmt", -- Go formatter
		},
		ignore_install = {},
	},
    -- LINTER --
	linter = {
		ensure_installed = {
			"pylint",
			"eslint_d",
		},
		ignore_install = {
			"janet",
			"inko",
			"ruby",
			"clj-kondo",
		},
	},
    -- LSP -- 
	lsp = {
		ensure_installed = {
			"lua_ls",
			"angularls",
		},
		ignore_install = {},
	},
}
