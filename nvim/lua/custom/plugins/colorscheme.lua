local flashLabelColors = {
	bg = "#ffdddd",
	fg = "#000000",
}
local scheme = "rose-pine"
local initScheme = function()
	vim.cmd.colorscheme(scheme)
end

return {
	-- { "sainnhe/gruvbox-material" },
	-- { "catppuccin/nvim", name = "catppuccin" },
	-- {
	-- 	"Mofiqul/dracula.nvim",
	-- 	name = "dracula",
	-- 	init = initScheme,
	--
	-- 	opts = { overrides = { FlashLabel = flashLabelColors } },
	-- },
	-- {
	-- 	"Shatur/neovim-ayu",
	-- 	name = "ayu",
	-- 	init = initScheme,
	-- 	opts = { overrides = { FlashLabel = flashLabelColors } },
	-- },
	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
		init = initScheme,
		lazy = false,
		opts = {
			highlight_groups = {
				FlashLabel = flashLabelColors,
			},
			styles = { transparency = true },
			dim_inactive_windows = true,
			palette = {
				overlay = "#000000",
			},
			enable = {
				terminal = false,
			},
		},
	},
	-- {
	-- 	"folke/tokyonight.nvim",
	-- 	init = initScheme,
	-- 	opts = {
	-- 		style = "night",
	-- 		on_highlights = function(hl, c)
	-- 			hl.FlashLabel = flashLabelColors
	-- 		end,
	-- 	},
	-- },
	{
		"nvim-lualine/lualine.nvim",
		opts = {
			options = {
				theme = scheme,
			},
		},
	},
}
