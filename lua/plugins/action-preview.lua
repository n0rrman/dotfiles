return {
	"aznhe21/actions-preview.nvim",
	opts = {
		diff = {
			ctxlen = 3,
		},
		highlight_command = {
		},

		backend = { "telescope", "nui" },

		telescope = vim.tbl_extend(
			"force",
			require("telescope.themes").get_dropdown(),
			{
				make_value = nil,
				make_make_display = nil,
			}
		),

		nui = {
			dir = "col",
			keymap = nil,
			layout = {
				position = "50%",
				size = {
					width = "60%",
					height = "90%",
				},
				min_width = 40,
				min_height = 10,
				relative = "editor",
			},
			preview = {
				size = "60%",
				border = {
					style = "rounded",
					padding = { 0, 1 },
				},
			},
			select = {
				size = "40%",
				border = {
					style = "rounded",
					padding = { 0, 1 },
				},
			},
		},
	},
}
