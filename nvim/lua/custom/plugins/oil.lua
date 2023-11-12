return {
	"stevearc/oil.nvim",
	lazy = false,
	opts = {
		default_file_explorer = true,
		keymaps = { ["<C-p>"] = false },
	},
	dependencies = { "nvim-tree/nvim-web-devicons" },
	keys = {
		{
			"-",
			mode = "n",
			"<CMD>Oil<CR>",
			desc = "Open parent directory (Oil)",
		},
	},
}
