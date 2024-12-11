return {
	{
		"nvim-telescope/telescope.nvim",
		enabled = true,
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			extensions = {
				fzf = {
					fuzzy = true,
					override_generic_sorter = true,
					override_file_sorter = true,
					case_mode = "smart_case",
				},
			},
		},
	},
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make",
	},
}
