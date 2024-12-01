return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },  -- Ensure you have the required icon plugin
  config = function()
    require('lualine').setup {
      options = {
        theme = 'gruvbox-material',
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
      },
      sections = {
        lualine_a = { 'mode' },  -- Show current mode (normal, insert, etc.)
        lualine_b = { 'branch', 'diff', 'diagnostics' },  -- Git information and diagnostics
        lualine_c = { 'filename' },  -- Display the filename
        lualine_x = { 'encoding', 'fileformat', 'filetype' },  -- Encoding, file format, and filetype
        lualine_y = { 'progress' },  -- Show progress (line/column)
        lualine_z = { 'location' },  -- Show current line number and column number
      },
    }
  end
}
