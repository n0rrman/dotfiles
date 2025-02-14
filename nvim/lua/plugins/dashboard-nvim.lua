return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	opts = {
		theme = "hyper",
		config = {
            header = {
                "",
                "NVIM v" .. vim.version().major .. "." .. vim.version().minor .. "." .. vim.version().patch,
                "",
            },
			shortcut = {
				{ desc = "󰊳 Update", group = "Special", action = "Lazy update", key = "u" },
				{
					icon = " ",
					icon_hl = "@variable",
					desc = "Files",
					group = "DiagnosticInfo",
					action = "Telescope find_files",
					key = "f",
				},
				{
					desc = " Obsidian Today",
					group = "CmpItemKindInterface",
					action = "ObsidianToday",
					key = "t",
				},
				{
					desc = " Obsidian Notes",
					group = "Number",
					action = "ObsidianSearch",
					key = "o",
				},
				{
					desc = " dotfiles",
					group = "Variable",
					action = "Telescope find_files hidden=true cwd=~/.dotfiles",
					key = "d",
				},
			},
			footer = {},
		},
	},
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
