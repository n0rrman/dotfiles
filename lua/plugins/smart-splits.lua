return { 
    'mrjones2014/smart-splits.nvim',
    enabled = true,
    config = function() require("smart-splits").setup()
        local ss = require("smart-splits")
        vim.keymap.set('n', '<C-h>', ss.move_cursor_left)
        vim.keymap.set('n', '<C-j>', ss.move_cursor_down)
        vim.keymap.set('n', '<C-k>', ss.move_cursor_up)
        vim.keymap.set('n', '<C-l>', ss.move_cursor_right)
        vim.keymap.set('n', '<C-\\>', ss.move_cursor_previous)
    end,
}
