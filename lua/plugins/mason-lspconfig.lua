return {
    "williamboman/mason-lspconfig.nvim",
    config = function()
    require("mason-lspconfig").setup({
      automatic_installation = true, -- Automatically install missing servers
    })
  end
}
