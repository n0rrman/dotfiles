-- CONFIG
vim.opt.hidden = true           -- Improved buffers.
vim.opt.fixendofline = false    -- Equivalent to 'nofixeol'
vim.opt.fixeol = false          -- Equivalent to 'nofixeol'

-- INDENTATION
vim.opt.autoindent = true       -- Auto indent when starting a new line.
vim.opt.smartindent = true      -- Smart autoindent when starting a new line.
vim.opt.tabstop = 4             -- The width of a tab is set to 4.
vim.opt.shiftwidth = 4          -- Indent will have a width of 4.
vim.opt.softtabstop = 4         -- Sets the number of columns for a tab to 4.
vim.opt.expandtab = true        -- Expand tabs to spaces.


-- SEARCH
vim.opt.showmatch = true        -- Shows matching ]}).
vim.opt.incsearch = true        -- Enable incremental searching.
vim.opt.ignorecase = true       -- Ignore case when searching.
vim.opt.smartcase = true        -- Overrides 'ignorecase' if uppercase.


-- FOLDING
vim.opt.foldmethod = 'syntax'   -- Fold based on syntax.
vim.opt.foldlevelstart = 99     -- Start with max fold level.


-- UI
vim.opt.statuscolumn = "%s%l|%r "
vim.opt.showmode = false        -- Hide mode from status bar
vim.opt.laststatus = 0          -- Remove status from status bar 
vim.opt.cursorline = true       -- Draws horizontal line on active line.
vim.opt.wildmenu = true         -- Display command line complete option menu.
vim.opt.showcmd = true          -- Show inserted command.
vim.opt.linebreak = true        -- Don't line wrap mid-word.
vim.opt.scrolloff = 2           -- Number of lines above and below the cursor.
vim.opt.number = true           -- Show line numbers.
vim.opt.relativenumber = true   -- Show relative numbers.
vim.opt.syntax = 'on'           -- Turn on syntax highlighting.
vim.opt.termguicolors = true    -- Enable true colors.
vim.opt.bg = 'dark'             -- Dark background syntax highlighting.
vim.o.background = "dark"    
vim.cmd([[colorscheme gruvbox]])

