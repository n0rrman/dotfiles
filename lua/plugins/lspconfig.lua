return {
    {
        "neovim/nvim-lspconfig",
        enabled = true,
    },
    {
        'williamboman/mason-lspconfig.nvim',
        enabled = true,
        opts = {
            handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup({})
                end,
            },
            ensure_installed = require("config.lsp").ensure_installed,
        }
    }
}
