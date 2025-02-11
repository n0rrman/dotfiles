return {
	"stevearc/oil.nvim",
	enabled = true,
    cmd = "Oil",
	opts = {
		delete_to_trash = true,
		view_options = {
			show_hidden = true,
		},
        float = {
            max_width = 0.5,
            max_height = 0.9,
        },
	},
	dependencies = { "nvim-tree/nvim-web-devicons" },
}
