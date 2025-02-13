return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	opts = {
		theme = "hyper",
		config = {
			week_header = {
				enable = true,
			},
			shortcut = {
				{ desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
				{
					icon = " ",
					icon_hl = "@variable",
					desc = "Files",
					group = "Label",
					action = "Telescope find_files",
					key = "f",
				},
				{
					desc = " Obsidian",
					group = "DiagnosticHint",
					action = "ObsidianWorkspace",
					key = "o",
				},
				{
					desc = " dotfiles",
					group = "Number",
					action = "Telescope find_files hidden=true cwd=~/.dotfiles",
					key = "d",
				},
			},
			footer = {},
		},
	},
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
