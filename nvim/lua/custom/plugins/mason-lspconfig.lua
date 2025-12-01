return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = {
			"astro",
			"emmet_language_server",
			"eslint",
			"lua_ls",
			"rust_analyzer",
			"stylua",
			"svelte",
			"tailwindcss",
			"ts_ls",
		},
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
}
