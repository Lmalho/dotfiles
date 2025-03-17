return {
	"pmizio/typescript-tools.nvim",
	dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
	opts = {},
	config = function()
		require("typescript-tools").setup({
			settings = {
				expose_as_code_action = {
					"fix_all",
					"add_missing_imports",
					"remove_unused",
					"remove_unused_imports",
				},
				tsserver_file_preferences = {
					importModuleSpecifierPreference = "relative",
				},
			},
		})
	end,
}
