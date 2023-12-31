return {
	"simrat39/rust-tools.nvim",
	opts = {
		server = {
			on_attach = function(_, bufnr)
				local rt = require("rust-tools")
				-- Hover actions
				vim.keymap.set(
					"n",
					"<leader>da",
					rt.hover_actions.hover_actions,
					{ buffer = bufnr }
				)
				-- Code action groups
				vim.keymap.set(
					"n",
					"<leader>dg",
					rt.code_action_group.code_action_group,
					{ buffer = bufnr }
				)
			end,
		},
	},
}
