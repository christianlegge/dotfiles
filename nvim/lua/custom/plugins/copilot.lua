return {
	"zbirenbaum/copilot.lua",
	opts = {
		suggestion = {
			auto_trigger = true,
			keymap = {
				accept = "<Tab>",
				next = "<C-J>",
				prev = "<C-K>",
			},
		},
		filetypes = {
			rust = false,
		},
	},
}
