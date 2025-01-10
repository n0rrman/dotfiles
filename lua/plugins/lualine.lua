return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			icons_enabled = true,
			theme = "gruvbox-material",
			section_separators = { left = " ", right = " " },
			component_separators = { left = " ", right = "  " },
			disabled_filetypes = {
				statusline = {},
				winbar = {},
			},
			ignore_focus = {},
			always_divide_middle = true,
			always_show_tabline = true,
			globalstatus = true,
			refresh = {
				statusline = 100,
				tabline = 100,
				winbar = 100,
			},
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch", "diff" },
			lualine_c = { {
				"diagnostics",
				sources = { "nvim_lsp" },
			} },
			lualine_x = { "encoding", "filetype" },
			lualine_y = { "searchcount" },
			lualine_z = { "location" },
		},
		inactive_sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = { { "filename", path = 1 } },
			lualine_x = { "filetype" },
			lualine_y = {},
			lualine_z = {},
		},
		tabline = {
			lualine_a = {
				{
					"tabs",
					mode = 2,
					path = 0,
					use_mode_colors = true,
				},
			},
			lualine_x = {
				{
					"filename",
					path = 3,
				},
			},
		},
		winbar = {},
		inactive_winbar = {},
		extensions = { "oil", "mason", "fzf" },
	},
}
