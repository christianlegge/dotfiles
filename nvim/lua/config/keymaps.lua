local Util = require("lazyvim.util")

vim.keymap.del("n", "<leader>gg")
vim.keymap.set("n", "<leader>gi", function()
	Util.terminal(
		{ "lazygit" },
		{ cwd = Util.root(), esc_esc = false, ctrl_hjkl = false }
	)
end, { desc = "Lazygit (root dir)" })
vim.keymap.del("n", "<leader>|")
vim.keymap.set(
	"n",
	"<leader>\\",
	":vsplit<cr>",
	{ desc = "Split window vertical" }
)
vim.keymap.del("n", "<leader><space>")
vim.keymap.set(
	{ "n", "v", "i" },
	"<C-p>",
	Util.telescope("files"),
	{ desc = "Find files" }
)
vim.keymap.set(
	{ "n" },
	"<leader>cs",
	":Copilot panel<cr>",
	{ desc = "Copilot panel" }
)
