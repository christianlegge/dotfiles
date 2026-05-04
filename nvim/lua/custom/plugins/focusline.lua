return {
	"ABDsheikho/focusline.nvim",
	opts = {
		-- focus_target can be a line number (e.g., 15), or a ratio (e.g., 0.25, 1 / 4, "25%").
		focus_target = "30%", -- try it with 30%
		-- which motion to associate focusline with.
		with_motion = {
			"zz",
			"z,", -- you can define your own keymap.
			"",
			"",
		},
	},
}
