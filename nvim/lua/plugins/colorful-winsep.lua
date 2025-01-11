return {
	"nvim-zh/colorful-winsep.nvim",
	enabled = true,
	config = function()
		require("colorful-winsep").setup({
			hi = {
				bg = nil,
				fg = "#98971a",
			},
		})
	end,
	event = { "WinLeave" },
}
