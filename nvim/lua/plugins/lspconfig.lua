return {
	{
		"neovim/nvim-lspconfig",
		enabled = true,
        event = "VeryLazy",
		config = function()
			local lspconfig = require("lspconfig")
			local cmp_nvim_lsp = require("cmp_nvim_lsp")

			-- Modify LSP config defaults to include cmp_nvim_lsp capabilities
			local lspconfig_defaults = lspconfig.util.default_config
			lspconfig_defaults.capabilities =
				vim.tbl_deep_extend("force", lspconfig_defaults.capabilities, cmp_nvim_lsp.default_capabilities())

			-- Global LSP actions (LspAttach autocommand)
			vim.api.nvim_create_autocmd("LspAttach", {
				desc = "LSP actions",
				callback = function(event)
					local opts = { buffer = event.buf }
					vim.keymap.set("n", "<leader><leader>", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
					vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
					vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
					vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
					vim.keymap.set("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>", opts)
					vim.keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)
					vim.keymap.set("n", "<leader>cw", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
				end,
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		enabled = true,
        event = "VeryLazy",
		opts = {
			handlers = {
				function(server_name)
					require("lspconfig")[server_name].setup({})
				end,
			},
			ensure_installed = require("config.servers").lsp.ensure_installed,
			ignore_install = require("config.servers").lsp.ensure_install,
		},
	},
}
