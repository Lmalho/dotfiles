return {
	"dmmulroy/tsc.nvim",
	-- Set the event for lazy loading
	-- This will load the plugin when you enter a TypeScript file
	ft = { "typescript", "typescriptreact" },

	-- Configuration options for tsc.nvim
	opts = {
		-- Auto-run tsc --watch on entering a TS buffer
		-- This is the main feature that provides live diagnostics
		auto_run = false,

		-- Display a notification when the typecheck starts and ends
		-- This is a great way to get feedback
		-- Requires nvim-notify
		enable_progress_notifications = true,
	},
	config = function()
		require("tsc").setup({
			flags = {
				noEmit = true,
				project = "tsconfig.test.json",
			},
			bin_path = "/Users/luisalho/Library/pnpm/tsgo",
			-- bin_name = "tsgo",
		})
	end,
}
