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
                require("config.servers").lsp
        }
    }
}
