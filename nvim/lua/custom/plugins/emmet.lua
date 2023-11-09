return {
	"olrtg/nvim-emmet",
	config = function()
		vim.keymap.set(
			{ "n", "v" },
			"gse",
			require("nvim-emmet").wrap_with_abbreviation,
			{ desc = "(Emmet) Wrap with abbreviation" }
		)
	end,
}
