return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			icons_enabled = true,
			theme = "gruvbox-material",
            -- Rounded
			-- section_separators = { left = " ", right = " " },
			-- component_separators = { left = " ", right = "  " },
			section_separators = { left = "", right = "" },
            -- Square
			component_separators = { left = "|", right = "|" },
			disabled_filetypes = {
				statusline = {},
				winbar = {},
			},
			ignore_focus = {},
			always_divide_middle = false,
			always_show_tabline = true,
			globalstatus = false,
			refresh = {
				statusline = 100,
				tabline = 100,
				winbar = 100,
			},
		},
		sections = {
			lualine_a = { { "mode", padding = 1 } },
			lualine_b = { { "branch", padding = 2}, { "diff", padding = 1 } },
			lualine_c = { {
				"diagnostics",
				sources = { "nvim_lsp" },
                padding = 1
			} },
			lualine_x = { { "encoding", padding = 2 }, { "filetype", padding = 2 } },
			lualine_y = { { "location", padding = 1 } },
			lualine_z = { { "progress", padding = 2 } },
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
		inactive_winbar = { },
		extensions = { "oil", "mason", "fzf" },
	},
}
