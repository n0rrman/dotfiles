-- Bind <space> to leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- CTRL-[hjkl]> to navigate splits
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', { noremap = true, silent = true })

-- Rearrange windows with CTRL-arrow keys
vim.keymap.set('n', '<leader><C-k>', '<C-W><S-k>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader><C-j>', '<C-W><S-j>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader><C-h>', '<C-W><S-h>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader><C-l>', '<C-W><S-l>', { noremap = true, silent = true })

-- Resize windows with leader key + C + h/j/k/l
vim.keymap.set('n', '<leader>k', '<C-W>-', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>j', '<C-W>+', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>h', '<C-W><', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>l', '<C-W>>', { noremap = true, silent = true })

-- Telescope (set in /plugins/telescope.lua)
--vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
--vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
--vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
--vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

