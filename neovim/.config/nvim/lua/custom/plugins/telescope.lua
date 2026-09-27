return {
	{
		"nvim-telescope/telescope.nvim",
		keys = {
			"<leader><space>",
			"none",
		},
		opts = {
			pickers = {
				find_files = {
					file_ignore_patterns = { "node_modules" },
					hidden = true,
				},
			},
		},
	},
}
