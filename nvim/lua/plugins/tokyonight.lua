return {
	"folke/tokyonight.nvim",
	opts = {
		style = "night",
		on_highlights = function(hl, c)
			hl.FlashLabel = {
				bg = "#ffdddd",
				fg = "#000000",
			}
		end,
	},
}
