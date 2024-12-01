return {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',        -- LSP completions
      'hrsh7th/cmp-buffer',          -- Buffer completions
      'hrsh7th/cmp-path',            -- Path completions
      'hrsh7th/cmp-cmdline',         -- Command line completions
      'saadparwaiz1/cmp_luasnip',    -- LuaSnip completions
      'L3MON4D3/LuaSnip',            -- Snippet engine
      'rafamadriz/friendly-snippets' -- A collection of snippets for LuaSnip
    },
    sources = {
        { name = 'nvim_lsp' },
    }
}
