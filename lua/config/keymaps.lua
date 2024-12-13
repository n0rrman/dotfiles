local opts = { noremap = true, silent = true }

-- CTRL-[hjkl]> to navigate splits
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", opts)
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", opts)
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", opts)
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", opts)

-- Rearrange windows with CTRL-arrow keys
vim.keymap.set("n", "<leader><C-k>", "<C-W><S-k>", opts)
vim.keymap.set("n", "<leader><C-j>", "<C-W><S-j>", opts)
vim.keymap.set("n", "<leader><C-h>", "<C-W><S-h>", opts)
vim.keymap.set("n", "<leader><C-l>", "<C-W><S-l>", opts)

-- Resize windows with leader key + C + h/j/k/l
vim.keymap.set("n", "<leader>k", "<C-W>-", opts)
vim.keymap.set("n", "<leader>j", "<C-W>+", opts)
vim.keymap.set("n", "<leader>h", "<C-W><", opts)
vim.keymap.set("n", "<leader>l", "<C-W>>", opts)

-- Tabs
vim.keymap.set("n", "<leader>tn", "<cmd>tabnew<cr>", opts)
vim.keymap.set("n", "<leader>tc", "<cmd>tabclose<cr>", opts)
vim.keymap.set("n", "<leader>t1", "<cmd>tabnext 1<cr>", opts)
vim.keymap.set("n", "<leader>t2", "<cmd>tabnext 2<cr>", opts)
vim.keymap.set("n", "<leader>t3", "<cmd>tabnext 3<cr>", opts)
vim.keymap.set("n", "<leader>t4", "<cmd>tabnext 4<cr>", opts)
vim.keymap.set("n", "<leader>t5", "<cmd>tabnext 5<cr>", opts)
vim.keymap.set("n", "<leader>tm1", "<cmd>tabmove 1<cr>", opts)
vim.keymap.set("n", "<leader>tm2", "<cmd>tabmove 2<cr>", opts)
vim.keymap.set("n", "<leader>tm3", "<cmd>tabmove 3<cr>", opts)
vim.keymap.set("n", "<leader>tm4", "<cmd>tabmove 4<cr>", opts)
vim.keymap.set("n", "<leader>tm5", "<cmd>tabmove 5<cr>", opts)

-- Oil menu
vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })

-- Angular
local ng = require("ng")
vim.keymap.set("n", "<leader>nt", ng.goto_template_for_component, opts)
vim.keymap.set("n", "<leader>nc", ng.goto_component_with_template_file, opts)
vim.keymap.set("n", "<leader>nT", ng.get_template_tcb, opts)

-- Git
vim.keymap.set("n", "<leader>gk", "<cmd>DiffviewOpen<cr>", opts)
vim.keymap.set("n", "<leader>gj", "<cmd>DiffviewClose<cr>", opts)
vim.keymap.set("n", "<leader>gg", "<cmd>Neogit<cr>", opts)
vim.keymap.set("n", "<leader>gb", "<cmd>Gitsigns blame<cr>", opts)

-- Actions
vim.keymap.set("n", "<leader>aj", "<cmd>lua vim.diagnostic.goto_next()<cr>", opts)
vim.keymap.set("n", "<leader>ak", "<cmd>lua vim.diagnostic.goto_prev()<cr>", opts)

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
vim.keymap.set("n", "<leader>fv", builtin.git_status, { desc = "Telescope git status" })
vim.keymap.set("n", "<leader>fr", builtin.lsp_references, { desc = "Telescope function references" })
vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "Telescope nvim keymaps" })
vim.keymap.set("n", "<leader>fs", builtin.grep_string, { desc = "Telescope selected word" })


