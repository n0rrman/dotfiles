-- CTRL-[hjkl]> to navigate splits
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", { noremap = true, silent = true })

-- Rearrange windows with CTRL-arrow keys
vim.keymap.set("n", "<leader><C-k>", "<C-W><S-k>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader><C-j>", "<C-W><S-j>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader><C-h>", "<C-W><S-h>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader><C-l>", "<C-W><S-l>", { noremap = true, silent = true })

-- Resize windows with leader key + C + h/j/k/l
vim.keymap.set("n", "<leader>k", "<C-W>-", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>j", "<C-W>+", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>h", "<C-W><", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>l", "<C-W>>", { noremap = true, silent = true })

-- Oil menu
vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })

-- Telescope (set in /plugins/telescope.lua)
--vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
--vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
--vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
--vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
local opts = { noremap = true, silent = true }
local ng = require("ng")
vim.keymap.set("n", "<leader>nt", ng.goto_template_for_component, opts)
vim.keymap.set("n", "<leader>nc", ng.goto_component_with_template_file, opts)
vim.keymap.set("n", "<leader>nT", ng.get_template_tcb, opts)

vim.keymap.set("n", "<leader>gk", "<cmd>DiffviewOpen<cr>", opts)
vim.keymap.set("n", "<leader>gj", "<cmd>DiffviewClose<cr>", opts)
vim.keymap.set("n", "<leader>gg", "<cmd>Neogit<cr>", opts)
vim.keymap.set("n", "<leader>gb", "<cmd>Gitsigns blame<cr>", opts)

vim.keymap.set("n", "<leader>aj", "<cmd>lua vim.diagnostic.goto_next()<cr>", opts)
vim.keymap.set("n", "<leader>ak", "<cmd>lua vim.diagnostic.goto_prev()<cr>", opts)

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
vim.keymap.set("n", "<leader>fv", builtin.git_status, { desc = "Telescope git status" })
vim.keymap.set("n", "<leader>fr", builtin.lsp_references, { desc = "Telescope function references" })
vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "Telescope nvim keymaps" })
