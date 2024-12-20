return {
	{
		"neovim/nvim-lspconfig",
		enabled = true,
		config = function()
			-- Add cmp_nvim_lsp capabilities to lspconfig before any servers are configured
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
					vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
					vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
					vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
					vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
					vim.keymap.set("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>", opts)
					vim.keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)
					vim.keymap.set("n", "<leader>cw", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
					vim.keymap.set({ "n", "x" }, "<leader>ce", "<cmd>lua vim.lsp.buf.format({async = true})<cr>", opts)
					vim.keymap.set("n", "<F4>", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
				end,
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		enabled = true,
		opts = {
			handlers = {
				function(server_name)
					require("lspconfig")[server_name].setup({})
				end,
			},
			require("config.servers").lsp,
		},
	},
}
