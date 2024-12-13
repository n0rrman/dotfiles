return {
	-- FORMATTER --
	formatter = {
		ensure_installed = {
			-- Javascript / Typscript
			"eslint",
			"eslint_d",
			"prettier",
			-- Python --
			"black",
			"flake8",
			-- Lua --
			"stylua",
			-- Rust --
			"rustfmt",
			-- Go lang --
			"gofmt",
		},
		ignore_install = {},
	},
	-- LINTER --
	linter = {
		ensure_installed = {
			-- Javascript / Typscript
			"eslint",
			"eslint_d",
			"prettier",
			-- Python --
			"black",
			"flake8",
			-- Lua --
			"stylua",
			-- Rust --
			"rustfmt",
			-- Go lang --
			"gofmt",
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
			-- Lua --
			"lua_ls",
			-- Angular --
			"angularls",
		},
		ignore_install = {},
	},
}


