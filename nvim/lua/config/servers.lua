return {
	-- FORMATTER --
	formatters = {
		javascript = { "prettierd", "prettier", stop_after_first = true },
		typescript = { "prettierd", "prettier", stop_after_first = true },
		javascriptreact = { "prettierd", "prettier", stop_after_first = true },
		typescriptreact = { "prettierd", "prettier", stop_after_first = true },
		svelte = { "prettierd", "prettier", stop_after_first = true },
		css = { "prettierd", "prettier", stop_after_first = true },
		html = { "prettierd", "prettier", stop_after_first = true },
		htmlangular = { "prettierd", "prettier", stop_after_first = true },
		json = { "prettierd", "prettier", stop_after_first = true },
		yaml = { "prettierd", "prettier", stop_after_first = true },
		markdown = { "prettierd", "prettier", stop_after_first = true },
		graphql = { "prettierd", "prettier", stop_after_first = true },
		lua = { "stylua" },
		python = { "isort", "black" },
		rust = { "rustfmt" },
		make = { "checkmake" },
		go = { "goimports" },
		["*"] = { "codespell" },
	},

	-- LINTER & FORMATTER --
	linter = {
		ensure_installed = {
			-- General --
			"codespell",
			-- Web --
			"eslint_d",
			"prettier",
			"prettierd",
			"biome",
			"prettier",
			-- Lua --
			"stylua",
			-- Python --
			"isort",
			"black",
			"flake8",
			-- Rust --
			"rustfmt",
			-- Nix --
			"nixpkgs-fmt",
			-- Make --
			"checkmake",
			-- Go --
			"goimports",
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
			-- General --
			"harper_ls",
			"emmet_ls",
			-- Lua --
			"lua_ls",
			-- Angular --
			"angularls",
			-- Typescript --
			"ts_ls",
			"biome",
			"eslint",
			-- CSS -
			"tailwindcss",
			"cssls",
			-- Make --
			"autotools_ls",
			-- Nix --
			"nil_ls",
			-- Go --
			"gopls",
			"templ",
			-- Rust --
			"rust_analyzer",
			-- C/C++ --
			"clangd",
			-- HTML --
			"html",
			-- Python --
			"pyright",
			"pylsp",
            -- Markdown --
            "marksman",
		},
		ignore_install = {},
	},
}
