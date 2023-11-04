return {
	"nvim-neo-tree/neo-tree.nvim",
	opts = {
		window = { mappings = {
			["s"] = "none",
		} },
		filesystem = {
			filtered_items = {
				visible = true,
				hide_dotfiles = false,
				hide_gitignored = true,
				hide_hidden = false,
			},
			follow_current_file = {
				enabled = true,
			},
			group_empty_dirs = true,
		},
	},
}
