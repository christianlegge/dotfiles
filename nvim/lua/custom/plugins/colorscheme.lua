return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		init = function()
			vim.cmd.colorscheme("rose-pine")
		end,
		opts = {
			highlight_groups = {
				FlashLabel = {
					bg = "#ffdddd",
					fg = "#000000",
				},
			},
		},
	},
	{
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
	},
}
