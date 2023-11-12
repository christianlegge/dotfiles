return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	opts = {
		options = {
			diagnostics = "nvim_lsp",
			separator_style = "slant",
			always_show_bufferline = false,
		},
	},
	config = function()
		vim.keymap.set("n", "<leader>bd", ":bd<CR>", { desc = "Close buffer" })
		require("bufferline").setup()
	end,
}
