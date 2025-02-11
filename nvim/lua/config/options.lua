-- CONFIG
vim.opt.hidden = true -- Improved buffers.
vim.opt.fixendofline = false -- Equivalent to 'nofixeol'
vim.opt.fixeol = false -- Equivalent to 'nofixeol'
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"
vim.opt.mouse = ""

-- INDENTATION
vim.opt.autoindent = true -- Auto indent when starting a new line.
vim.opt.smartindent = true -- Smart autoindent when starting a new line.
vim.opt.tabstop = 4 -- The width of a tab is set to 4.
vim.opt.shiftwidth = 4 -- Indent will have a width of 4.
vim.opt.softtabstop = 4 -- Sets the number of columns for a tab to 4.
vim.opt.expandtab = true -- Expand tabs to spaces.
vim.opt.backspace = "indent,eol,start"

-- SEARCH
vim.opt.showmatch = true -- Shows matching ]}).
vim.opt.incsearch = true -- Enable incremental searching.
vim.opt.ignorecase = true -- Ignore case when searching.
vim.opt.smartcase = true -- Overrides 'ignorecase' if uppercase.


-- In your options.lua
-- FOLDING
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true
vim.opt.foldminlines = 1
vim.opt.foldnestmax = 10
vim.opt.foldtext = ''  
vim.opt.foldcolumn = '0'

-- UI
vim.opt.signcolumn = "yes" -- Reserve space in the gutter
vim.opt.showmode = false -- Hide mode from status bar
vim.opt.laststatus = 0 -- Remove status from status bar
vim.opt.cursorline = true -- Draws horizontal line on active line.
vim.opt.wildmenu = true -- Display command line complete option menu.
vim.opt.showcmd = true -- Show inserted command.
vim.opt.wrap = false -- Don't wrap
vim.opt.linebreak = true -- Don't line wrap mid-word.
vim.opt.scrolloff = 2 -- Number of lines above and below the cursor.
vim.opt.number = true -- Show line numbers.
vim.opt.relativenumber = true -- Show relative numbers.
vim.opt.syntax = "on" -- Turn on syntax highlighting.
vim.opt.termguicolors = true -- Enable true colors.
vim.opt.bg = "dark" -- Dark background syntax highlighting.
vim.opt.conceallevel = 2 -- Conceal text.

-- Styling
vim.cmd([[
  colorscheme gruvbox
]])

-- File type override for Angular components
vim.filetype.add({
	pattern = {
		[".*%.component%.html"] = "htmlangular", -- Sets the filetype to `htmlangular` if it matches the pattern
	},
})

-- Comment string for Angular components
vim.api.nvim_create_autocmd("FileType", {
	pattern = "htmlangular",
	callback = function()
		vim.bo.commentstring = "<!-- %s -->"
	end,
})

-- DIAGNOSTIC
vim.diagnostic.config({
	virtual_text = {
		prefix = "●",
		priority = 1,
		spacing = 1,
		virt_text_pos = "eol",
	},
	float = {
		border = "rounded",
		source = "always",
		header = "Diagnostics",
		wrap = true,
	},
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "󰅚",
			[vim.diagnostic.severity.WARN] = "󰀪",
			[vim.diagnostic.severity.INFO] = "!",
			[vim.diagnostic.severity.HINT] = "󰌶",
		},
	},
	underline = true,
	severity_sort = true,
})

-- Highlight on yank
vim.cmd([[ 
    augroup highlight_yank 
        autocmd! 
        au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=200}) 
    augroup END 
]])
