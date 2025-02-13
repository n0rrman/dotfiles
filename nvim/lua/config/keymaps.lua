--
-- CONFIG --
--
-- Imports
local ng = require("ng")
local telescope = require("telescope.builtin")

-- New keymap function
local function keymap(input, output, desc, mode)
    local opts = {
        noremap = true,
        silent = true,
        desc = desc,
    }
    vim.keymap.set(mode or "n", input, output, opts)
end

--
-- GENERAL KEYMAPS --
--
-- Window navigation: ctrl-[h,j,k,l]
keymap("<C-h>", "<cmd>wincmd h<CR>", "Window navigation: Navigate to left window")
keymap("<C-j>", "<cmd>wincmd j<CR>", "Window navigation: Navigate to lower window")
keymap("<C-k>", "<cmd>wincmd k<CR>", "Window navigation: Navigate to upper window")
keymap("<C-l>", "<cmd>wincmd l<CR>", "Window navigation: Navigate to right window")

-- Window arrangement: Leader->CTRL-[h,j,k,l]
keymap("<leader><C-h>", "<C-W><S-h>", "Window arrangement: Move window left")
keymap("<leader><C-j>", "<C-W><S-j>", "Window arrangement: Move window down")
keymap("<leader><C-k>", "<C-W><S-k>", "Window arrangement: Move window up")
keymap("<leader><C-l>", "<C-W><S-l>", "Window arrangement: Move window right")

-- Window resize: Leader->[h,j,k,l]
keymap("<leader>h", "<C-W><", "Window resize: Move window border left")
keymap("<leader>j", "<C-W>+", "Window resize: Move window border down")
keymap("<leader>k", "<C-W>-", "Window resize: Move window border up")
keymap("<leader>l", "<C-W>>", "Window resize: Move window border right")

-- Tab management: Leader->t...
keymap("<leader>tn", "<cmd>tabnew<cr>", "Tab management: Create new tab")
keymap("<leader>tc", "<cmd>tabclose<cr>", "Tab management: Close current tab")
keymap("<leader>t1", "<cmd>tabnext 1<cr>", "Tab management: Go to tab 1")
keymap("<leader>t2", "<cmd>tabnext 2<cr>", "Tab management: Go to tab 2")
keymap("<leader>t3", "<cmd>tabnext 3<cr>", "Tab management: Go to tab 3")
keymap("<leader>t4", "<cmd>tabnext 4<cr>", "Tab management: Go to tab 4")
keymap("<leader>t5", "<cmd>tabnext 5<cr>", "Tab management: Go to tab 5")
keymap("<leader>tm1", "<cmd>tabmove 1<cr>", "Tab management: Move tab to position 1")
keymap("<leader>tm2", "<cmd>tabmove 2<cr>", "Tab management: Move tab to position 2")
keymap("<leader>tm3", "<cmd>tabmove 3<cr>", "Tab management: Move tab to position 3")
keymap("<leader>tm4", "<cmd>tabmove 4<cr>", "Tab management: Move tab to position 4")
keymap("<leader>tm5", "<cmd>tabmove 5<cr>", "Tab management: Move tab to position 5")

--
-- PLUGIN KEYMAPS --
--
keymap("<S-h>", ":bprevious<CR>", "Previous buffer")
keymap("<S-l>", ":bnext<CR>", "Next buffer")

-- Copy / paste: Leader -> c 
keymap("<leader>cy", '"+y', "Copy selection to clipboard", "v")
keymap("<leader>cp", '"+p', "Paste from clipboard", "")

-- Oil: -
keymap("-", "<CMD>Oil --float<CR>", "Oil: Open Oil / Open parent directory")

-- Angular: Leader -> n
keymap("<leader>nt", ng.goto_template_for_component, "Ng: Go to template file")
keymap("<leader>nc", ng.goto_component_with_template_file, "Ng: Go to component file")
keymap("<leader>nT", ng.get_template_tcb, "Ng: Get template typecheck block")


-- Git: Leader -> g
keymap("<leader>gk", "<cmd>DiffviewOpen<cr>", "Diffview: Open diffview")
keymap("<leader>gj", "<cmd>DiffviewClose<cr>", "Diffview: Close diffview")
keymap("<leader>gb", "<cmd>Gitsigns blame<cr>", "Gitsigns: Show gitblame")
keymap("<leader>gg", "<cmd>CopilotChatToggle<cr>", "Copilot: Open chat")
vim.api.nvim_set_keymap('i', '<S-Tab>', "copilot#Accept('<CR>')", { expr = true, silent = true })


-- Diagnostics: Leader -> a
keymap("<leader>aa", "<cmd>lua vim.lsp.buf.code_action()<cr>", "Diagnostic: Show actions")
keymap("<leader>ad", "<cmd>lua vim.diagnostic.open_float()<cr>", "Diagnostic: Show diagnostics")
keymap("<leader>aj", "<cmd>lua vim.diagnostic.goto_next()<cr>", "Diagnostic: Go to next")
keymap("<leader>ak", "<cmd>lua vim.diagnostic.goto_prev()<cr>", "Diagnostic: Go to previous")

-- Telescope: Leader -> f
keymap("<leader>ff", telescope.find_files, "Telescope: Find files")
keymap("<leader>fg", telescope.live_grep, "Telescope: Live grep")
keymap("<leader>fb", telescope.buffers, "Telescope: Buffers")
keymap("<leader>fh", telescope.help_tags, "Telescope: Help tags")
keymap("<leader>fv", telescope.git_status, "Telescope: Git status")
keymap("<leader>fr", telescope.lsp_references, "Telescope: Function references")
keymap("gr", telescope.lsp_references, "Telescope: Function references")
keymap("<leader>fk", telescope.keymaps, "Telescope: Nvim keymaps")
keymap("<leader>fs", telescope.grep_string, "Telescope: Selected word")
keymap("<leader>fp", telescope.registers, "Telescope: Registers")
keymap("<leader>fo", ":ObsidianSearch<CR>", "Telescope: Search Telescope")

-- Obsidian: Leader -> o 
keymap("<leader>od", ":ObsidianDailies -5 2<CR>", "Obsidian: Open Dailies")
keymap("<leader>on", ":ObsidianNew<CR>", "Obsidian: New Note")
keymap("<leader>os", ":ObsidianSearch<CR>", "Obsidian: Search")
keymap("<leader>ot", ":ObsidianTags<CR>", "Obsidian: Tags")
keymap("<leader>ow", ":ObsidianWorkspace<CR>", "Obsidian: Workspace")

