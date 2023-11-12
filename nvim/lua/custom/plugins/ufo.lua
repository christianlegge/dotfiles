return {
	"kevinhwang91/nvim-ufo",
	dependencies = { "kevinhwang91/promise-async" },
	event = "BufReadPost", -- needed for folds to load properly
	opts = {
		provider_selector = function(bufnr, filetype, buftype)
			return { "treesitter", "indent" }
		end,
	},
	init = function()
		-- INFO fold commands usually change the foldlevel, which fixes folds, e.g.
		-- auto-closing them after leaving insert mode, however ufo does not seem to
		-- have equivalents for zr and zm because there is no saved fold level.
		-- Consequently, the vim-internal fold levels need to be disabled by setting
		-- them to 99
		vim.o.foldcolumn = "0"
		vim.o.foldenable = true
		vim.o.foldlevel = 99
		vim.o.foldlevelstart = 99
		vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
		require("ufo").setup()
		-- local capabilities = vim.lsp.protocol.make_client_capabilities()
		-- capabilities.textDocument.foldingRange = {
		-- 	dynamicRegistration = false,
		-- 	lineFoldingOnly = true,
		-- }
		-- local language_servers = require("lspconfig").util.available_servers() -- or list servers manually like {'gopls', 'clangd'}
		-- for _, ls in ipairs(language_servers) do
		-- 	require("lspconfig")[ls].setup({
		-- 		capabilities = capabilities,
		-- 		-- you can add other fields for setting up lsp server in this table
		-- 	})
		-- end
		-- vim.lsp.protocol.make_client_capabilities().textDocument.foldingRange =
		-- 	{
		-- 		dynamicRegistration = false,
		-- 		lineFoldingOnly = true,
		-- 	}
		-- local language_servers = require("lspconfig").util.available_servers()
		-- for _, ls in ipairs(language_servers) do
		-- 	require("lspconfig")[ls].setup({
		-- 		capabilities = vim.lsp.protocol.make_client_capabilities(),
		-- 	})
		-- end
	end,
}
