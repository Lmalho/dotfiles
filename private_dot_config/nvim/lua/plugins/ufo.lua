return {
	"kevinhwang91/nvim-ufo",
	dependencies = {
		"kevinhwang91/promise-async",
		{
			"nvim-treesitter/nvim-treesitter",
			build = ":TSUpdate",
		},
	},
	event = "BufRead",
	keys = {
		{
			"zR",
			function()
				require("ufo").openAllFolds()
			end,
			desc = "Open all folds",
		},
		{
			"zM",
			function()
				require("ufo").closeAllFolds()
			end,
			desc = "Close all folds",
		},
	},
	init = function()
		vim.o.foldcolumn = "1" -- Shows a small column with the fold level (remove if you want a clean gutter)
		vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
		vim.o.foldlevelstart = 99
		vim.o.foldenable = true
	end,
	config = function()
		require("ufo").setup({
			-- This function tells ufo to use Treesitter first, then LSP, then Indent
			provider_selector = function(bufnr, filetype, buftype)
				return { "treesitter", "indent" }
			end,
		})
	end,
}
