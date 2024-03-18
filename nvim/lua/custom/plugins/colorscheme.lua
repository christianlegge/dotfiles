local flashLabelColors = {
	bg = "#ffdddd",
	fg = "#000000",
}
local scheme = "gruvbox-material"
local initScheme = function()
	vim.cmd.colorscheme(scheme)
end

return {
	{ "sainnhe/gruvbox-material" },
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{
		"Mofiqul/dracula.nvim",
		name = "dracula",
		init = initScheme,

		opts = { overrides = { FlashLabel = flashLabelColors } },
	},
	{
		"Shatur/neovim-ayu",
		name = "ayu",
		init = initScheme,
		opts = { overrides = { FlashLabel = flashLabelColors } },
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		init = initScheme,
		opts = {
			highlight_groups = {
				FlashLabel = flashLabelColors,
			},
		},
	},
	{
		"folke/tokyonight.nvim",
		init = initScheme,
		opts = {
			style = "night",
			on_highlights = function(hl, c)
				hl.FlashLabel = flashLabelColors
			end,
		},
	},
	{
		"nvim-lualine/lualine.nvim",
		opts = {
			options = {
				theme = scheme,
			},
		},
	},
}
